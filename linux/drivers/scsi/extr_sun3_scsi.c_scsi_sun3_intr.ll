; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3_scsi.c_scsi_sun3_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3_scsi.c_scsi_sun3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }
%struct.Scsi_Host = type { i32 }

@dregs = common dso_local global %struct.TYPE_2__* null, align 8
@CSR_GOOD = common dso_local global i16 0, align 2
@CSR_DMA_BUSERR = common dso_local global i16 0, align 2
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bus error in DMA\0A\00", align 1
@CSR_DMA_CONFLICT = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [14 x i8] c"DMA conflict\0A\00", align 1
@CSR_SDB_INT = common dso_local global i16 0, align 2
@CSR_DMA_INT = common dso_local global i16 0, align 2
@CSR_DMA_ENABLE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @scsi_sun3_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_sun3_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dregs, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 2
  store i16 %12, i16* %6, align 2
  store i32 0, i32* %7, align 4
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @CSR_GOOD, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @CSR_DMA_BUSERR, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %30 = call i32 @shost_printk(i32 %28, %struct.Scsi_Host* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @CSR_DMA_CONFLICT, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %41 = call i32 @shost_printk(i32 %39, %struct.Scsi_Host* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %31
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @CSR_SDB_INT, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @CSR_DMA_INT, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %47, %49
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* %3, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @NCR5380_intr(i32 %54, i8* %55)
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %43
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @IRQ_RETVAL(i32 %58)
  ret i32 %59
}

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @NCR5380_intr(i32, i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
