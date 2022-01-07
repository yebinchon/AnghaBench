; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_process_crw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_process_crw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crw = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.subchannel_id = type { i32, i32 }
%struct.subchannel = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"CRW0 reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"CRW1 reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@CRW_ERC_PMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crw*, %struct.crw*, i32)* @css_process_crw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_process_crw(%struct.crw* %0, %struct.crw* %1, i32 %2) #0 {
  %4 = alloca %struct.crw*, align 8
  %5 = alloca %struct.crw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.subchannel_id, align 4
  %8 = alloca %struct.subchannel*, align 8
  store %struct.crw* %0, %struct.crw** %4, align 8
  store %struct.crw* %1, %struct.crw** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 (...) @css_schedule_eval_all()
  br label %99

13:                                               ; preds = %3
  %14 = load %struct.crw*, %struct.crw** %4, align 8
  %15 = getelementptr inbounds %struct.crw, %struct.crw* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.crw*, %struct.crw** %4, align 8
  %18 = getelementptr inbounds %struct.crw, %struct.crw* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.crw*, %struct.crw** %4, align 8
  %21 = getelementptr inbounds %struct.crw, %struct.crw* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.crw*, %struct.crw** %4, align 8
  %24 = getelementptr inbounds %struct.crw, %struct.crw* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.crw*, %struct.crw** %4, align 8
  %27 = getelementptr inbounds %struct.crw, %struct.crw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.crw*, %struct.crw** %4, align 8
  %30 = getelementptr inbounds %struct.crw, %struct.crw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.crw*, %struct.crw** %4, align 8
  %33 = getelementptr inbounds %struct.crw, %struct.crw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i64 %31, i32 %34)
  %36 = load %struct.crw*, %struct.crw** %5, align 8
  %37 = icmp ne %struct.crw* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %13
  %39 = load %struct.crw*, %struct.crw** %5, align 8
  %40 = getelementptr inbounds %struct.crw, %struct.crw* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.crw*, %struct.crw** %5, align 8
  %43 = getelementptr inbounds %struct.crw, %struct.crw* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.crw*, %struct.crw** %5, align 8
  %46 = getelementptr inbounds %struct.crw, %struct.crw* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.crw*, %struct.crw** %5, align 8
  %49 = getelementptr inbounds %struct.crw, %struct.crw* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.crw*, %struct.crw** %5, align 8
  %52 = getelementptr inbounds %struct.crw, %struct.crw* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.crw*, %struct.crw** %5, align 8
  %55 = getelementptr inbounds %struct.crw, %struct.crw* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.crw*, %struct.crw** %5, align 8
  %58 = getelementptr inbounds %struct.crw, %struct.crw* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %38, %13
  %62 = call i32 @init_subchannel_id(%struct.subchannel_id* %7)
  %63 = load %struct.crw*, %struct.crw** %4, align 8
  %64 = getelementptr inbounds %struct.crw, %struct.crw* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.crw*, %struct.crw** %5, align 8
  %68 = icmp ne %struct.crw* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.crw*, %struct.crw** %5, align 8
  %71 = getelementptr inbounds %struct.crw, %struct.crw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 4
  %74 = and i32 %73, 3
  %75 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.crw*, %struct.crw** %4, align 8
  %78 = getelementptr inbounds %struct.crw, %struct.crw* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CRW_ERC_PMOD, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = bitcast %struct.subchannel_id* %7 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call %struct.subchannel* @get_subchannel_by_schid(i64 %84)
  store %struct.subchannel* %85, %struct.subchannel** %8, align 8
  %86 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %87 = icmp ne %struct.subchannel* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %90 = call i32 @css_update_ssd_info(%struct.subchannel* %89)
  %91 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %92 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %91, i32 0, i32 0
  %93 = call i32 @put_device(i32* %92)
  br label %94

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94, %76
  %96 = bitcast %struct.subchannel_id* %7 to i64*
  %97 = load i64, i64* %96, align 4
  %98 = call i32 @css_evaluate_subchannel(i64 %97, i32 0)
  br label %99

99:                                               ; preds = %95, %11
  ret void
}

declare dso_local i32 @css_schedule_eval_all(...) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @init_subchannel_id(%struct.subchannel_id*) #1

declare dso_local %struct.subchannel* @get_subchannel_by_schid(i64) #1

declare dso_local i32 @css_update_ssd_info(%struct.subchannel*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @css_evaluate_subchannel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
