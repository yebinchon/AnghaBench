; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_rw6_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_rw6_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32* }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"FUA write on READ/WRITE(6) drive\0A\00", align 1
@WRITE_6 = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, i32, i32, i8)* @sd_setup_rw6_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_rw6_cmnd(%struct.scsi_cmnd* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %12 = load i32, i32* %10, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %18, i32* %6, align 4
  br label %76

19:                                               ; preds = %5
  %20 = load i8, i8* %11, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 8
  %23 = trunc i32 %22 to i8
  %24 = call i64 @unlikely(i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %29 = call i32 @scmd_printk(i32 %27, %struct.scsi_cmnd* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %30, i32* %6, align 4
  br label %76

31:                                               ; preds = %19
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  store i32 6, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @WRITE_6, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @READ_6, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 31
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 255
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32 %66, i32* %70, align 4
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %40, %26, %17
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
