; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_BWMapping_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_BWMapping_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pkt_attrib = type { i64 }
%struct.hal_com_data = type { i64 }

@CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BWMapping_8723B(%struct.adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %7)
  store %struct.hal_com_data* %8, %struct.hal_com_data** %6, align 8
  %9 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %10 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %16 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %23 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %20
  br label %54

31:                                               ; preds = %2
  %32 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %33 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %39 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %45 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  store i32 1, i32* %5, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %53

52:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
