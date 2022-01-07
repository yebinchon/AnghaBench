; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32)* }
%struct.riva_regs = type { i32*, i32*, i32*, i32*, i32, i32 }

@NUM_CRT_REGS = common dso_local global i32 0, align 4
@NUM_ATC_REGS = common dso_local global i32 0, align 4
@NUM_GRC_REGS = common dso_local global i32 0, align 4
@NUM_SEQ_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.riva_par*, %struct.riva_regs*)* @riva_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riva_save_state(%struct.riva_par* %0, %struct.riva_regs* %1) #0 {
  %3 = alloca %struct.riva_par*, align 8
  %4 = alloca %struct.riva_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.riva_par* %0, %struct.riva_par** %3, align 8
  store %struct.riva_regs* %1, %struct.riva_regs** %4, align 8
  %6 = call i32 (...) @NVTRACE_ENTER()
  %7 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %8 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %9, align 8
  %11 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %12 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %11, i32 0, i32 0
  %13 = call i32 %10(%struct.TYPE_3__* %12, i32 0)
  %14 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %15 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32*)** %16, align 8
  %18 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %19 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %18, i32 0, i32 0
  %20 = load %struct.riva_regs*, %struct.riva_regs** %4, align 8
  %21 = getelementptr inbounds %struct.riva_regs, %struct.riva_regs* %20, i32 0, i32 5
  %22 = call i32 %17(%struct.TYPE_3__* %19, i32* %21)
  %23 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %24 = call i32 @MISCin(%struct.riva_par* %23)
  %25 = load %struct.riva_regs*, %struct.riva_regs** %4, align 8
  %26 = getelementptr inbounds %struct.riva_regs, %struct.riva_regs* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NUM_CRT_REGS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CRTCin(%struct.riva_par* %32, i32 %33)
  %35 = load %struct.riva_regs*, %struct.riva_regs** %4, align 8
  %36 = getelementptr inbounds %struct.riva_regs, %struct.riva_regs* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NUM_ATC_REGS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ATTRin(%struct.riva_par* %50, i32 %51)
  %53 = load %struct.riva_regs*, %struct.riva_regs** %4, align 8
  %54 = getelementptr inbounds %struct.riva_regs, %struct.riva_regs* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %45

62:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @NUM_GRC_REGS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @GRAin(%struct.riva_par* %68, i32 %69)
  %71 = load %struct.riva_regs*, %struct.riva_regs** %4, align 8
  %72 = getelementptr inbounds %struct.riva_regs, %struct.riva_regs* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %63

80:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @NUM_SEQ_REGS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @SEQin(%struct.riva_par* %86, i32 %87)
  %89 = load %struct.riva_regs*, %struct.riva_regs** %4, align 8
  %90 = getelementptr inbounds %struct.riva_regs, %struct.riva_regs* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %81

98:                                               ; preds = %81
  %99 = call i32 (...) @NVTRACE_LEAVE()
  ret void
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @MISCin(%struct.riva_par*) #1

declare dso_local i32 @CRTCin(%struct.riva_par*, i32) #1

declare dso_local i32 @ATTRin(%struct.riva_par*, i32) #1

declare dso_local i32 @GRAin(%struct.riva_par*, i32) #1

declare dso_local i32 @SEQin(%struct.riva_par*, i32) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
