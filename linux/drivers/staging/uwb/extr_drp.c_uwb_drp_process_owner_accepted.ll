; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_owner_accepted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_owner_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, %struct.TYPE_4__, %struct.uwb_rsv_move }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv*, %struct.uwb_mas_bm*)* @uwb_drp_process_owner_accepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_owner_accepted(%struct.uwb_rsv* %0, %struct.uwb_mas_bm* %1) #0 {
  %3 = alloca %struct.uwb_rsv*, align 8
  %4 = alloca %struct.uwb_mas_bm*, align 8
  %5 = alloca %struct.uwb_rsv_move*, align 8
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %3, align 8
  store %struct.uwb_mas_bm* %1, %struct.uwb_mas_bm** %4, align 8
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 2
  store %struct.uwb_rsv_move* %7, %struct.uwb_rsv_move** %5, align 8
  %8 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %86 [
    i32 128, label %11
    i32 133, label %11
    i32 134, label %11
    i32 132, label %14
    i32 129, label %32
    i32 130, label %50
    i32 131, label %68
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %13 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %12, i32 134)
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %4, align 8
  %16 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UWB_NUM_MAS, align 4
  %23 = call i32 @bitmap_equal(i32 %17, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %27 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %26, i32 134)
  br label %31

28:                                               ; preds = %14
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %30 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %29, i32 132)
  br label %31

31:                                               ; preds = %28, %25
  br label %87

32:                                               ; preds = %2
  %33 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %4, align 8
  %34 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %37 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UWB_NUM_MAS, align 4
  %41 = call i32 @bitmap_equal(i32 %35, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %45 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %44, i32 134)
  br label %49

46:                                               ; preds = %32
  %47 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %48 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %47, i32 129)
  br label %49

49:                                               ; preds = %46, %43
  br label %87

50:                                               ; preds = %2
  %51 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %4, align 8
  %52 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %55 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UWB_NUM_MAS, align 4
  %59 = call i32 @bitmap_equal(i32 %53, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %63 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %62, i32 131)
  br label %67

64:                                               ; preds = %50
  %65 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %66 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %65, i32 130)
  br label %67

67:                                               ; preds = %64, %61
  br label %87

68:                                               ; preds = %2
  %69 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %4, align 8
  %70 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %73 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @UWB_NUM_MAS, align 4
  %77 = call i32 @bitmap_equal(i32 %71, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %81 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %80, i32 129)
  br label %85

82:                                               ; preds = %68
  %83 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %84 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %83, i32 131)
  br label %85

85:                                               ; preds = %82, %79
  br label %87

86:                                               ; preds = %2
  br label %87

87:                                               ; preds = %86, %85, %67, %49, %31, %11
  ret void
}

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @bitmap_equal(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
