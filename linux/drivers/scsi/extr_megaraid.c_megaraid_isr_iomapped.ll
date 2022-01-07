; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_megaraid_isr_iomapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_megaraid_isr_iomapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64 }

@MAX_FIRMWARE_STATUS = common dso_local global i32 0, align 4
@VALID_INTR_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @megaraid_isr_iomapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megaraid_isr_iomapped(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %5, align 8
  %15 = load i32, i32* @MAX_FIRMWARE_STATUS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %86, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call i32 @irq_state(%struct.TYPE_12__* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @VALID_INTR_BYTE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %88

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @set_irq_state(%struct.TYPE_12__* %32, i32 %33)
  br label %35

35:                                               ; preds = %43, %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 (...) @cpu_relax()
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 255, i32* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = call i32 @atomic_sub(i32 %57, i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @memcpy(i32* %18, i8* %67, i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = call i32 @irq_ack(%struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @mega_cmd_done(%struct.TYPE_12__* %72, i32* %18, i32 %73, i32 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i32 @mega_rundoneq(%struct.TYPE_12__* %76)
  store i32 1, i32* %12, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = call i64 @atomic_read(i32* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %45
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = call i32 @mega_runpendq(%struct.TYPE_12__* %83)
  br label %85

85:                                               ; preds = %82, %45
  br label %86

86:                                               ; preds = %85
  br i1 true, label %23, label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %30
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @IRQ_RETVAL(i32 %93)
  %95 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %95)
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @irq_state(%struct.TYPE_12__*) #2

declare dso_local i32 @set_irq_state(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @cpu_relax(...) #2

declare dso_local i32 @atomic_sub(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @irq_ack(%struct.TYPE_12__*) #2

declare dso_local i32 @mega_cmd_done(%struct.TYPE_12__*, i32*, i32, i32) #2

declare dso_local i32 @mega_rundoneq(%struct.TYPE_12__*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @mega_runpendq(%struct.TYPE_12__*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @IRQ_RETVAL(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
