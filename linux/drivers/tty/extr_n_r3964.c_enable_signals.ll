; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_enable_signals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_enable_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { %struct.r3964_message* }
%struct.r3964_message = type { i32, i64, i32*, i32*, i32*, %struct.r3964_message*, %struct.pid*, i32 }
%struct.pid = type { i32 }
%struct.r3964_client_info = type { i32, i64, i32*, i32*, i32*, %struct.r3964_client_info*, %struct.pid*, i32 }

@R3964_SIG_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"removing client %d from client list\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"enable_signals - msg kfree %p\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"enable_signals - kfree %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"enable_signals - kmalloc %p\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"add client %d to client list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r3964_info*, %struct.pid*, i32)* @enable_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_signals(%struct.r3964_info* %0, %struct.pid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r3964_info*, align 8
  %6 = alloca %struct.pid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r3964_client_info*, align 8
  %9 = alloca %struct.r3964_client_info**, align 8
  %10 = alloca %struct.r3964_message*, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %5, align 8
  store %struct.pid* %1, %struct.pid** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @R3964_SIG_ALL, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %76

15:                                               ; preds = %3
  %16 = load %struct.r3964_info*, %struct.r3964_info** %5, align 8
  %17 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %16, i32 0, i32 0
  %18 = bitcast %struct.r3964_message** %17 to %struct.r3964_client_info**
  store %struct.r3964_client_info** %18, %struct.r3964_client_info*** %9, align 8
  br label %19

19:                                               ; preds = %69, %15
  %20 = load %struct.r3964_client_info**, %struct.r3964_client_info*** %9, align 8
  %21 = load %struct.r3964_client_info*, %struct.r3964_client_info** %20, align 8
  %22 = icmp ne %struct.r3964_client_info* %21, null
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load %struct.r3964_client_info**, %struct.r3964_client_info*** %9, align 8
  %25 = load %struct.r3964_client_info*, %struct.r3964_client_info** %24, align 8
  store %struct.r3964_client_info* %25, %struct.r3964_client_info** %8, align 8
  %26 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %27 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %26, i32 0, i32 6
  %28 = load %struct.pid*, %struct.pid** %27, align 8
  %29 = load %struct.pid*, %struct.pid** %6, align 8
  %30 = icmp eq %struct.pid* %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %23
  %32 = load %struct.pid*, %struct.pid** %6, align 8
  %33 = call i32 @pid_nr(%struct.pid* %32)
  %34 = call i32 @TRACE_PS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %36 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %35, i32 0, i32 5
  %37 = load %struct.r3964_client_info*, %struct.r3964_client_info** %36, align 8
  %38 = load %struct.r3964_client_info**, %struct.r3964_client_info*** %9, align 8
  store %struct.r3964_client_info* %37, %struct.r3964_client_info** %38, align 8
  br label %39

39:                                               ; preds = %56, %31
  %40 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %41 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.r3964_info*, %struct.r3964_info** %5, align 8
  %46 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %47 = bitcast %struct.r3964_client_info* %46 to %struct.r3964_message*
  %48 = call %struct.r3964_message* @remove_msg(%struct.r3964_info* %45, %struct.r3964_message* %47)
  store %struct.r3964_message* %48, %struct.r3964_message** %10, align 8
  %49 = load %struct.r3964_message*, %struct.r3964_message** %10, align 8
  %50 = icmp ne %struct.r3964_message* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.r3964_message*, %struct.r3964_message** %10, align 8
  %53 = call i32 @kfree(%struct.r3964_message* %52)
  %54 = load %struct.r3964_message*, %struct.r3964_message** %10, align 8
  %55 = call i32 @TRACE_M(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.r3964_message* %54)
  br label %56

56:                                               ; preds = %51, %44
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %59 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %58, i32 0, i32 6
  %60 = load %struct.pid*, %struct.pid** %59, align 8
  %61 = call i32 @put_pid(%struct.pid* %60)
  %62 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %63 = bitcast %struct.r3964_client_info* %62 to %struct.r3964_message*
  %64 = call i32 @kfree(%struct.r3964_message* %63)
  %65 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %66 = bitcast %struct.r3964_client_info* %65 to %struct.r3964_message*
  %67 = call i32 @TRACE_M(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.r3964_message* %66)
  store i32 0, i32* %4, align 4
  br label %133

68:                                               ; preds = %23
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.r3964_client_info**, %struct.r3964_client_info*** %9, align 8
  %71 = load %struct.r3964_client_info*, %struct.r3964_client_info** %70, align 8
  %72 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %71, i32 0, i32 5
  store %struct.r3964_client_info** %72, %struct.r3964_client_info*** %9, align 8
  br label %19

73:                                               ; preds = %19
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %133

76:                                               ; preds = %3
  %77 = load %struct.r3964_info*, %struct.r3964_info** %5, align 8
  %78 = load %struct.pid*, %struct.pid** %6, align 8
  %79 = call %struct.r3964_message* @findClient(%struct.r3964_info* %77, %struct.pid* %78)
  %80 = bitcast %struct.r3964_message* %79 to %struct.r3964_client_info*
  store %struct.r3964_client_info* %80, %struct.r3964_client_info** %8, align 8
  %81 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %82 = icmp ne %struct.r3964_client_info* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %86 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %131

87:                                               ; preds = %76
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.r3964_message* @kmalloc(i32 64, i32 %88)
  %90 = bitcast %struct.r3964_message* %89 to %struct.r3964_client_info*
  store %struct.r3964_client_info* %90, %struct.r3964_client_info** %8, align 8
  %91 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %92 = bitcast %struct.r3964_client_info* %91 to %struct.r3964_message*
  %93 = call i32 @TRACE_M(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.r3964_message* %92)
  %94 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %95 = icmp eq %struct.r3964_client_info* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %133

99:                                               ; preds = %87
  %100 = load %struct.pid*, %struct.pid** %6, align 8
  %101 = call i32 @pid_nr(%struct.pid* %100)
  %102 = call i32 @TRACE_PS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %104 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %103, i32 0, i32 7
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %108 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.pid*, %struct.pid** %6, align 8
  %110 = call %struct.pid* @get_pid(%struct.pid* %109)
  %111 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %112 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %111, i32 0, i32 6
  store %struct.pid* %110, %struct.pid** %112, align 8
  %113 = load %struct.r3964_info*, %struct.r3964_info** %5, align 8
  %114 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %113, i32 0, i32 0
  %115 = load %struct.r3964_message*, %struct.r3964_message** %114, align 8
  %116 = bitcast %struct.r3964_message* %115 to %struct.r3964_client_info*
  %117 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %118 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %117, i32 0, i32 5
  store %struct.r3964_client_info* %116, %struct.r3964_client_info** %118, align 8
  %119 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %120 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %119, i32 0, i32 4
  store i32* null, i32** %120, align 8
  %121 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %122 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %121, i32 0, i32 3
  store i32* null, i32** %122, align 8
  %123 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %124 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %123, i32 0, i32 2
  store i32* null, i32** %124, align 8
  %125 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %126 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %128 = bitcast %struct.r3964_client_info* %127 to %struct.r3964_message*
  %129 = load %struct.r3964_info*, %struct.r3964_info** %5, align 8
  %130 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %129, i32 0, i32 0
  store %struct.r3964_message* %128, %struct.r3964_message** %130, align 8
  br label %131

131:                                              ; preds = %99, %83
  br label %132

132:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %96, %73, %57
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @TRACE_PS(i8*, i32) #1

declare dso_local i32 @pid_nr(%struct.pid*) #1

declare dso_local %struct.r3964_message* @remove_msg(%struct.r3964_info*, %struct.r3964_message*) #1

declare dso_local i32 @kfree(%struct.r3964_message*) #1

declare dso_local i32 @TRACE_M(i8*, %struct.r3964_message*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local %struct.r3964_message* @findClient(%struct.r3964_info*, %struct.pid*) #1

declare dso_local %struct.r3964_message* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.pid* @get_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
