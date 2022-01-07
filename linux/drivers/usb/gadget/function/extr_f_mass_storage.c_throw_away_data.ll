; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_throw_away_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_throw_away_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i64, %struct.fsg_buffhd*, %struct.fsg_buffhd* }
%struct.fsg_buffhd = type { i64, i64, %struct.TYPE_2__*, %struct.fsg_buffhd* }
%struct.TYPE_2__ = type { i64, i64 }

@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@FSG_BUFLEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FSG_STATE_ABORT_BULK_OUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @throw_away_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throw_away_data(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %8 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %9 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %8, i32 0, i32 1
  %10 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  store %struct.fsg_buffhd* %10, %struct.fsg_buffhd** %4, align 8
  br label %11

11:                                               ; preds = %106, %1
  %12 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %13 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %19 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i1 [ true, %11 ], [ %21, %17 ]
  br i1 %23, label %24, label %110

24:                                               ; preds = %22
  %25 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %26 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %25, i32 0, i32 2
  %27 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %26, align 8
  store %struct.fsg_buffhd* %27, %struct.fsg_buffhd** %5, align 8
  %28 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %29 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %24
  %34 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %35 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %40 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @FSG_BUFLEN, align 4
  %43 = call i64 @min(i64 %41, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %45 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @set_bulk_out_req_length(%struct.fsg_common* %44, %struct.fsg_buffhd* %45, i64 %46)
  %48 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %49 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %50 = call i32 @start_out_transfer(%struct.fsg_common* %48, %struct.fsg_buffhd* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %111

55:                                               ; preds = %38
  %56 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %57 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %56, i32 0, i32 3
  %58 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %57, align 8
  %59 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %60 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %59, i32 0, i32 2
  store %struct.fsg_buffhd* %58, %struct.fsg_buffhd** %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %63 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %106

66:                                               ; preds = %33, %24
  %67 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %68 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %69 = call i32 @sleep_thread(%struct.fsg_common* %67, i32 0, %struct.fsg_buffhd* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %111

74:                                               ; preds = %66
  %75 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %76 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %77 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %79 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %78, i32 0, i32 3
  %80 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %79, align 8
  %81 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %82 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %81, i32 0, i32 1
  store %struct.fsg_buffhd* %80, %struct.fsg_buffhd** %82, align 8
  %83 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %84 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %89 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %74
  %93 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %94 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92, %74
  %100 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %101 = load i32, i32* @FSG_STATE_ABORT_BULK_OUT, align 4
  %102 = call i32 @raise_exception(%struct.fsg_common* %100, i32 %101)
  %103 = load i32, i32* @EINTR, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %111

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %55
  %107 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %108 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %107, i32 0, i32 1
  %109 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %108, align 8
  store %struct.fsg_buffhd* %109, %struct.fsg_buffhd** %4, align 8
  br label %11

110:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %99, %72, %52
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @set_bulk_out_req_length(%struct.fsg_common*, %struct.fsg_buffhd*, i64) #1

declare dso_local i32 @start_out_transfer(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @raise_exception(%struct.fsg_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
