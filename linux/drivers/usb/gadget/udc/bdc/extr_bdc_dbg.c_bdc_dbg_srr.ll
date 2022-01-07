; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dbg_srr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dbg_srr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bdc_sr*, i32, i64 }
%struct.bdc_sr = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"bdc_dbg_srr sr:%p dqp_index:%d\0A\00", align 1
@NUM_SR_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%llx %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdc_dbg_srr(%struct.bdc* %0, i32 %1) #0 {
  %3 = alloca %struct.bdc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bdc_sr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bdc* %0, %struct.bdc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bdc*, %struct.bdc** %3, align 8
  %9 = getelementptr inbounds %struct.bdc, %struct.bdc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.bdc_sr*, %struct.bdc_sr** %10, align 8
  store %struct.bdc_sr* %11, %struct.bdc_sr** %5, align 8
  %12 = load %struct.bdc*, %struct.bdc** %3, align 8
  %13 = getelementptr inbounds %struct.bdc, %struct.bdc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.bdc*, %struct.bdc** %3, align 8
  %17 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bdc_sr*, %struct.bdc_sr** %5, align 8
  %20 = load %struct.bdc*, %struct.bdc** %3, align 8
  %21 = getelementptr inbounds %struct.bdc, %struct.bdc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.bdc_sr* %19, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %68, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NUM_SR_ENTRIES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load %struct.bdc*, %struct.bdc** %3, align 8
  %31 = getelementptr inbounds %struct.bdc, %struct.bdc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.bdc_sr*, %struct.bdc_sr** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bdc_sr, %struct.bdc_sr* %33, i64 %35
  store %struct.bdc_sr* %36, %struct.bdc_sr** %5, align 8
  %37 = load %struct.bdc*, %struct.bdc** %3, align 8
  %38 = getelementptr inbounds %struct.bdc, %struct.bdc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.bdc_sr*, %struct.bdc_sr** %5, align 8
  %42 = getelementptr inbounds %struct.bdc_sr, %struct.bdc_sr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.bdc_sr*, %struct.bdc_sr** %5, align 8
  %48 = getelementptr inbounds %struct.bdc_sr, %struct.bdc_sr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load %struct.bdc_sr*, %struct.bdc_sr** %5, align 8
  %54 = getelementptr inbounds %struct.bdc_sr, %struct.bdc_sr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load %struct.bdc_sr*, %struct.bdc_sr** %5, align 8
  %60 = getelementptr inbounds %struct.bdc_sr, %struct.bdc_sr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %46, i32 %52, i32 %58, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 8
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %29
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %25

71:                                               ; preds = %25
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
