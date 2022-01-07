; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_tcw_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_tcw_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcw = type { i32, i32, i8*, i64, i8*, i64 }
%struct.tidaw = type { i32 }
%struct.tccb = type { i32* }
%struct.tccb_tcat = type { i64 }

@TIDAW_FLAGS_LAST = common dso_local global i32 0, align 4
@TCW_FLAGS_OUTPUT_TIDA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcw_finalize(%struct.tcw* %0, i32 %1) #0 {
  %3 = alloca %struct.tcw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tidaw*, align 8
  %6 = alloca %struct.tccb*, align 8
  %7 = alloca %struct.tccb_tcat*, align 8
  %8 = alloca i8*, align 8
  store %struct.tcw* %0, %struct.tcw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tcw*, %struct.tcw** %3, align 8
  %10 = call %struct.tidaw* @tcw_get_data(%struct.tcw* %9)
  store %struct.tidaw* %10, %struct.tidaw** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, i32* @TIDAW_FLAGS_LAST, align 4
  %15 = load %struct.tidaw*, %struct.tidaw** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %15, i64 %18
  %20 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %14
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.tcw*, %struct.tcw** %3, align 8
  %25 = call %struct.tccb* @tcw_get_tccb(%struct.tcw* %24)
  store %struct.tccb* %25, %struct.tccb** %6, align 8
  %26 = load %struct.tccb*, %struct.tccb** %6, align 8
  %27 = getelementptr inbounds %struct.tccb, %struct.tccb* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.tccb*, %struct.tccb** %6, align 8
  %30 = call i32 @tca_size(%struct.tccb* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = bitcast i32* %32 to %struct.tccb_tcat*
  store %struct.tccb_tcat* %33, %struct.tccb_tcat** %7, align 8
  %34 = load %struct.tccb_tcat*, %struct.tccb_tcat** %7, align 8
  %35 = call i32 @memset(%struct.tccb_tcat* %34, i32 0, i32 8)
  %36 = load %struct.tccb*, %struct.tccb** %6, align 8
  %37 = call i8* @calc_dcw_count(%struct.tccb* %36)
  store i8* %37, i8** %8, align 8
  %38 = load %struct.tcw*, %struct.tcw** %3, align 8
  %39 = getelementptr inbounds %struct.tcw, %struct.tcw* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %23
  %43 = load %struct.tcw*, %struct.tcw** %3, align 8
  %44 = getelementptr inbounds %struct.tcw, %struct.tcw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TCW_FLAGS_OUTPUT_TIDA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.tidaw*, %struct.tidaw** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @calc_cbc_size(%struct.tidaw* %50, i32 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr i8, i8* %53, i64 %52
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %49, %42, %23
  %56 = load %struct.tcw*, %struct.tcw** %3, align 8
  %57 = getelementptr inbounds %struct.tcw, %struct.tcw* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.tcw*, %struct.tcw** %3, align 8
  %63 = getelementptr inbounds %struct.tcw, %struct.tcw* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.tcw*, %struct.tcw** %3, align 8
  %66 = getelementptr inbounds %struct.tcw, %struct.tcw* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.tcw*, %struct.tcw** %3, align 8
  %72 = getelementptr inbounds %struct.tcw, %struct.tcw* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @ALIGN(i8* %75, i32 4)
  %77 = add nsw i64 %76, 4
  %78 = load %struct.tccb_tcat*, %struct.tccb_tcat** %7, align 8
  %79 = getelementptr inbounds %struct.tccb_tcat, %struct.tccb_tcat* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.tccb*, %struct.tccb** %6, align 8
  %81 = call i32 @tca_size(%struct.tccb* %80)
  %82 = sext i32 %81 to i64
  %83 = add i64 8, %82
  %84 = add i64 %83, 8
  %85 = sub i64 %84, 20
  %86 = lshr i64 %85, 2
  %87 = trunc i64 %86 to i32
  %88 = load %struct.tcw*, %struct.tcw** %3, align 8
  %89 = getelementptr inbounds %struct.tcw, %struct.tcw* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  ret void
}

declare dso_local %struct.tidaw* @tcw_get_data(%struct.tcw*) #1

declare dso_local %struct.tccb* @tcw_get_tccb(%struct.tcw*) #1

declare dso_local i32 @tca_size(%struct.tccb*) #1

declare dso_local i32 @memset(%struct.tccb_tcat*, i32, i32) #1

declare dso_local i8* @calc_dcw_count(%struct.tccb*) #1

declare dso_local i64 @calc_cbc_size(%struct.tidaw*, i32) #1

declare dso_local i64 @ALIGN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
