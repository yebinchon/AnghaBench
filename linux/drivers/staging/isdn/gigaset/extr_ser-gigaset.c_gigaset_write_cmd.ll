; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32, i32, i32, i64, i32, %struct.cmdbuf_t*, i32, %struct.cmdbuf_t* }
%struct.cmdbuf_t = type { i32, %struct.cmdbuf_t*, %struct.cmdbuf_t*, i32 }

@MS_LOCKED = common dso_local global i64 0, align 8
@DEBUG_TRANSCMD = common dso_local global i32 0, align 4
@DEBUG_LOCKCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CMD Transmit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, %struct.cmdbuf_t*)* @gigaset_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_write_cmd(%struct.cardstate* %0, %struct.cmdbuf_t* %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store %struct.cmdbuf_t* %1, %struct.cmdbuf_t** %4, align 8
  %6 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %7 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MS_LOCKED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DEBUG_TRANSCMD, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DEBUG_LOCKCMD, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %18 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %21 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gigaset_dbg_buffer(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 5
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %29 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %28, i32 0, i32 6
  %30 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %29, align 8
  %31 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %32 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %31, i32 0, i32 2
  store %struct.cmdbuf_t* %30, %struct.cmdbuf_t** %32, align 8
  %33 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %34 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %33, i32 0, i32 6
  %35 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %34, align 8
  %36 = icmp ne %struct.cmdbuf_t* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %15
  %38 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %39 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 6
  %41 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %40, align 8
  %42 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %41, i32 0, i32 1
  store %struct.cmdbuf_t* %38, %struct.cmdbuf_t** %42, align 8
  br label %52

43:                                               ; preds = %15
  %44 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %45 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 8
  store %struct.cmdbuf_t* %44, %struct.cmdbuf_t** %46, align 8
  %47 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %48 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %43, %37
  %53 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %54 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %61 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %62 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %61, i32 0, i32 6
  store %struct.cmdbuf_t* %60, %struct.cmdbuf_t** %62, align 8
  %63 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %64 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %63, i32 0, i32 5
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %68 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %67, i32 0, i32 2
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %72 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %52
  %76 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 3
  %78 = call i32 @tasklet_schedule(i32* %77)
  br label %79

79:                                               ; preds = %75, %52
  %80 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 2
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %85 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  ret i32 %86
}

declare dso_local i32 @gigaset_dbg_buffer(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
