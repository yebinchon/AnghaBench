; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_dpcsup.c_aac_aif_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_dpcsup.c_aac_aif_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_4__*, %struct.aac_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.aac_dev = type { i64 }
%struct.aac_aifcmd = type { i32 }

@NoMoreAifDataAvailable = common dso_local global i32 0, align 4
@AifReqEvent = common dso_local global i32 0, align 4
@AifRequest = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fib*)* @aac_aif_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_aif_callback(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.fib*, align 8
  %6 = alloca %struct.aac_dev*, align 8
  %7 = alloca %struct.aac_aifcmd*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.fib*
  store %struct.fib* %10, %struct.fib** %5, align 8
  %11 = load %struct.fib*, %struct.fib** %4, align 8
  %12 = icmp eq %struct.fib* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.fib*, %struct.fib** %4, align 8
  %16 = getelementptr inbounds %struct.fib, %struct.fib* %15, i32 0, i32 1
  %17 = load %struct.aac_dev*, %struct.aac_dev** %16, align 8
  store %struct.aac_dev* %17, %struct.aac_dev** %6, align 8
  %18 = load %struct.fib*, %struct.fib** %4, align 8
  %19 = getelementptr inbounds %struct.fib, %struct.fib* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NoMoreAifDataAvailable, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %30 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %2
  %34 = load %struct.fib*, %struct.fib** %4, align 8
  %35 = call i32 @aac_fib_complete(%struct.fib* %34)
  %36 = load %struct.fib*, %struct.fib** %4, align 8
  %37 = call i32 @aac_fib_free(%struct.fib* %36)
  br label %58

38:                                               ; preds = %28
  %39 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %40 = load %struct.fib*, %struct.fib** %4, align 8
  %41 = getelementptr inbounds %struct.fib, %struct.fib* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @aac_intr_normal(%struct.aac_dev* %39, i32 0, i32 1, i32 0, %struct.TYPE_4__* %42)
  %44 = load %struct.fib*, %struct.fib** %5, align 8
  %45 = call i32 @aac_fib_init(%struct.fib* %44)
  %46 = load %struct.fib*, %struct.fib** %5, align 8
  %47 = call i64 @fib_data(%struct.fib* %46)
  %48 = inttoptr i64 %47 to %struct.aac_aifcmd*
  store %struct.aac_aifcmd* %48, %struct.aac_aifcmd** %7, align 8
  %49 = load i32, i32* @AifReqEvent, align 4
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = load %struct.aac_aifcmd*, %struct.aac_aifcmd** %7, align 8
  %52 = getelementptr inbounds %struct.aac_aifcmd, %struct.aac_aifcmd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @AifRequest, align 4
  %54 = load %struct.fib*, %struct.fib** %5, align 8
  %55 = load i32, i32* @FsaNormal, align 4
  %56 = load %struct.fib*, %struct.fib** %5, align 8
  %57 = call i32 @aac_fib_send(i32 %53, %struct.fib* %54, i32 0, i32 %55, i32 0, i32 1, i32 ptrtoint (void (i8*, %struct.fib*)* @aac_aif_callback to i32), %struct.fib* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

declare dso_local i32 @aac_intr_normal(%struct.aac_dev*, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, %struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
