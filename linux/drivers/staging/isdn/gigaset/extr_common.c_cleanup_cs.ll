; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_cleanup_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_cleanup_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i32*, %struct.cmdbuf_t*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.cmdbuf_t = type { %struct.cmdbuf_t* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@M_UNKNOWN = common dso_local global i32 0, align 4
@MS_UNINITIALIZED = common dso_local global i32 0, align 4
@INS_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate channel %d data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @cleanup_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_cs(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.cmdbuf_t*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 6
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @M_UNKNOWN, align 4
  %12 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 18
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @MS_UNINITIALIZED, align 4
  %15 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 17
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 16
  %19 = call i32 @clear_at_state(i32* %18)
  %20 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %21 = call i32 @dealloc_temp_at_states(%struct.cardstate* %20)
  %22 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 16
  %24 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %25 = call i32 @gigaset_at_init(i32* %23, i32* null, %struct.cardstate* %24, i32 0)
  %26 = load i32, i32* @INS_command, align 4
  %27 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 15
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 8
  %31 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 15
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 15
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 14
  %41 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %40, align 8
  store %struct.cmdbuf_t* %41, %struct.cmdbuf_t** %3, align 8
  br label %42

42:                                               ; preds = %45, %1
  %43 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %44 = icmp ne %struct.cmdbuf_t* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  store %struct.cmdbuf_t* %46, %struct.cmdbuf_t** %4, align 8
  %47 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %48 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %47, i32 0, i32 0
  %49 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %48, align 8
  store %struct.cmdbuf_t* %49, %struct.cmdbuf_t** %3, align 8
  %50 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %51 = call i32 @kfree(%struct.cmdbuf_t* %50)
  br label %42

52:                                               ; preds = %42
  %53 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %54 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %53, i32 0, i32 13
  store i32* null, i32** %54, align 8
  %55 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %56 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %55, i32 0, i32 14
  store %struct.cmdbuf_t* null, %struct.cmdbuf_t** %56, align 8
  %57 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %58 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %57, i32 0, i32 12
  store i64 0, i64* %58, align 8
  %59 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %60 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %59, i32 0, i32 11
  store i64 0, i64* %60, align 8
  %61 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %62 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %64 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %63, i32 0, i32 10
  store i64 0, i64* %64, align 8
  %65 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %66 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %65, i32 0, i32 9
  store i64 0, i64* %66, align 8
  %67 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %68 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %72 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %71, i32 0, i32 6
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %103, %52
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %83 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = call i32 @gigaset_freebcs(i64 %87)
  %89 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %90 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @gigaset_initbcs(i64 %94, %struct.cardstate* %95, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %81
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %75

106:                                              ; preds = %75
  %107 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %108 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  %114 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %115 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %117 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %119 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %118, i32 0, i32 2
  %120 = call i32 @wake_up_interruptible(i32* %119)
  br label %121

121:                                              ; preds = %111, %106
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_at_state(i32*) #1

declare dso_local i32 @dealloc_temp_at_states(%struct.cardstate*) #1

declare dso_local i32 @gigaset_at_init(i32*, i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_freebcs(i64) #1

declare dso_local i64 @gigaset_initbcs(i64, %struct.cardstate*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
