; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_fw_dnld_over.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_fw_dnld_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"FW loading over (%d)]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfcmrvl_private*, i64)* @fw_dnld_over to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_dnld_over(%struct.nfcmrvl_private* %0, i64 %1) #0 {
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca i64, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %6 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %12 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @release_firmware(i32* %14)
  %16 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %17 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %20 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %23 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %10, %2
  %26 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %27 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %32 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i64 @timer_pending(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %39 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @del_timer_sync(i32* %41)
  br label %43

43:                                               ; preds = %37, %25
  %44 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %45 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = call i64 @timer_pending(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %51 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = call i32 @del_timer_sync(i32* %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %56 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @nfc_info(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %64 = call i32 @nfcmrvl_chip_halt(%struct.nfcmrvl_private* %63)
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %67 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %72 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @nfc_fw_download_done(i32 %70, i32 %74, i64 %75)
  ret void
}

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @nfc_info(i32, i8*, i64) #1

declare dso_local i32 @nfcmrvl_chip_halt(%struct.nfcmrvl_private*) #1

declare dso_local i32 @nfc_fw_download_done(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
