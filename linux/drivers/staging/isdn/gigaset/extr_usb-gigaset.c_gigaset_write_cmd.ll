; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32, i32, i32, i32, i64, i32, %struct.cmdbuf_t*, %struct.cmdbuf_t* }
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
  %6 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store %struct.cmdbuf_t* %1, %struct.cmdbuf_t** %4, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MS_LOCKED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DEBUG_TRANSCMD, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DEBUG_LOCKCMD, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %19 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %22 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gigaset_dbg_buffer(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 6
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 7
  %31 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %30, align 8
  %32 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %33 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %32, i32 0, i32 2
  store %struct.cmdbuf_t* %31, %struct.cmdbuf_t** %33, align 8
  %34 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 7
  %36 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %35, align 8
  %37 = icmp ne %struct.cmdbuf_t* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %16
  %39 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %40 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 7
  %42 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %41, align 8
  %43 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %42, i32 0, i32 1
  store %struct.cmdbuf_t* %39, %struct.cmdbuf_t** %43, align 8
  br label %53

44:                                               ; preds = %16
  %45 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %46 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 8
  store %struct.cmdbuf_t* %45, %struct.cmdbuf_t** %47, align 8
  %48 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %49 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %52 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %55 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %58 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %62 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %63 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %62, i32 0, i32 7
  store %struct.cmdbuf_t* %61, %struct.cmdbuf_t** %63, align 8
  %64 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 6
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %69 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %68, i32 0, i32 3
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %73 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %6, align 4
  %75 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %53
  %80 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 4
  %82 = call i32 @tasklet_schedule(i32* %81)
  br label %83

83:                                               ; preds = %79, %53
  %84 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %85 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %84, i32 0, i32 3
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
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
