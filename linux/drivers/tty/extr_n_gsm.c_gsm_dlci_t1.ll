; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_t1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_t1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, i32, i32, %struct.gsm_mux*, i32, i32 }
%struct.gsm_mux = type { i32, i32 }
%struct.timer_list = type { i32 }

@t1 = common dso_local global i32 0, align 4
@SABM = common dso_local global i32 0, align 4
@PF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DLCI %d opening in ADM mode.\0A\00", align 1
@DLCI_MODE_ADM = common dso_local global i32 0, align 4
@DISC = common dso_local global i32 0, align 4
@dlci = common dso_local global %struct.gsm_dlci* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @gsm_dlci_t1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_dlci_t1(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.gsm_dlci*, align 8
  %4 = alloca %struct.gsm_mux*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %6 = ptrtoint %struct.gsm_dlci* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @t1, align 4
  %9 = call %struct.gsm_dlci* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.gsm_dlci* %9, %struct.gsm_dlci** %3, align 8
  %10 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %11 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %10, i32 0, i32 3
  %12 = load %struct.gsm_mux*, %struct.gsm_mux** %11, align 8
  store %struct.gsm_mux* %12, %struct.gsm_mux** %4, align 8
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %14 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %115 [
    i32 128, label %16
    i32 129, label %80
  ]

16:                                               ; preds = %1
  %17 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %18 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %22 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %16
  %26 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %27 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %26, i32 0, i32 3
  %28 = load %struct.gsm_mux*, %struct.gsm_mux** %27, align 8
  %29 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %30 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SABM, align 4
  %33 = load i32, i32* @PF, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @gsm_command(%struct.gsm_mux* %28, i32 %31, i32 %34)
  %36 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %37 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %36, i32 0, i32 1
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %40 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 100
  %45 = add nsw i32 %38, %44
  %46 = call i32 @mod_timer(i32* %37, i32 %45)
  br label %79

47:                                               ; preds = %16
  %48 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %49 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %47
  %53 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %54 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DM, align 4
  %57 = load i32, i32* @PF, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %52
  %61 = load i32, i32* @debug, align 4
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %66 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* @DLCI_MODE_ADM, align 4
  %71 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %72 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %74 = call i32 @gsm_dlci_open(%struct.gsm_dlci* %73)
  br label %78

75:                                               ; preds = %52, %47
  %76 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %77 = call i32 @gsm_dlci_close(%struct.gsm_dlci* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %25
  br label %115

80:                                               ; preds = %1
  %81 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %82 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %86 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %80
  %90 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %91 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %90, i32 0, i32 3
  %92 = load %struct.gsm_mux*, %struct.gsm_mux** %91, align 8
  %93 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %94 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DISC, align 4
  %97 = load i32, i32* @PF, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @gsm_command(%struct.gsm_mux* %92, i32 %95, i32 %98)
  %100 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %101 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %100, i32 0, i32 1
  %102 = load i32, i32* @jiffies, align 4
  %103 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %104 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 100
  %109 = add nsw i32 %102, %108
  %110 = call i32 @mod_timer(i32* %101, i32 %109)
  br label %114

111:                                              ; preds = %80
  %112 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %113 = call i32 @gsm_dlci_close(%struct.gsm_dlci* %112)
  br label %114

114:                                              ; preds = %111, %89
  br label %115

115:                                              ; preds = %1, %114, %79
  ret void
}

declare dso_local %struct.gsm_dlci* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @gsm_command(%struct.gsm_mux*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @gsm_dlci_open(%struct.gsm_dlci*) #1

declare dso_local i32 @gsm_dlci_close(%struct.gsm_dlci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
