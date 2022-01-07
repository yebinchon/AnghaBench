; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_get_card_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_get_card_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@SD_BLOCK_LEN = common dso_local global i64 0, align 8
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32*)* @ene_get_card_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_get_card_status(%struct.us_data* %0, i32* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %11, %struct.ene_ub6250_info** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 24
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 15
  %18 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %19 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 20
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %25 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %31 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 4194303
  %39 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %40 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %29, %2
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 3
  %44 = shl i32 %43, 10
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 22
  %47 = or i32 %44, %46
  %48 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %49 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 7
  %52 = and i32 %51, 7
  %53 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %54 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %56 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %41
  %61 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %62 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 256
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %71 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %60, %41
  %73 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %74 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @SD_BLOCK_LEN, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %81 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @SD_BLOCK_LEN, align 8
  %85 = sub nsw i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = shl i32 1, %86
  %88 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %89 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* @SD_BLOCK_LEN, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %93 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %97

94:                                               ; preds = %72
  %95 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %96 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %95, i32 0, i32 4
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %79
  %98 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
