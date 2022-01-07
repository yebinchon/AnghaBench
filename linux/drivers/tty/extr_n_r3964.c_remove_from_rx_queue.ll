; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_remove_from_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_remove_from_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32, %struct.r3964_block_header*, %struct.r3964_block_header*, i32 }
%struct.r3964_block_header = type { %struct.r3964_block_header*, i32 }

@.str = private unnamed_addr constant [62 x i8] c"remove_from_rx_queue: rx_first = %p, rx_last = %p, count = %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"remove_from_rx_queue: %p, length %u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"remove_from_rx_queue - kfree %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*, %struct.r3964_block_header*)* @remove_from_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_rx_queue(%struct.r3964_info* %0, %struct.r3964_block_header* %1) #0 {
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca %struct.r3964_block_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.r3964_block_header*, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %3, align 8
  store %struct.r3964_block_header* %1, %struct.r3964_block_header** %4, align 8
  %7 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %8 = icmp eq %struct.r3964_block_header* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %112

10:                                               ; preds = %2
  %11 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %12 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %11, i32 0, i32 2
  %13 = load %struct.r3964_block_header*, %struct.r3964_block_header** %12, align 8
  %14 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %15 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %14, i32 0, i32 1
  %16 = load %struct.r3964_block_header*, %struct.r3964_block_header** %15, align 8
  %17 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %18 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, %struct.r3964_block_header*, %struct.r3964_block_header*, ...) @TRACE_Q(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.r3964_block_header* %13, %struct.r3964_block_header* %16, i32 %19)
  %21 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %22 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %23 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.r3964_block_header*
  %27 = call i32 (i8*, %struct.r3964_block_header*, %struct.r3964_block_header*, ...) @TRACE_Q(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.r3964_block_header* %21, %struct.r3964_block_header* %26)
  %28 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %29 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %28, i32 0, i32 3
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %33 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %32, i32 0, i32 2
  %34 = load %struct.r3964_block_header*, %struct.r3964_block_header** %33, align 8
  %35 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %36 = icmp eq %struct.r3964_block_header* %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %10
  %38 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %39 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %38, i32 0, i32 0
  %40 = load %struct.r3964_block_header*, %struct.r3964_block_header** %39, align 8
  %41 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %42 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %41, i32 0, i32 2
  store %struct.r3964_block_header* %40, %struct.r3964_block_header** %42, align 8
  %43 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %44 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %43, i32 0, i32 2
  %45 = load %struct.r3964_block_header*, %struct.r3964_block_header** %44, align 8
  %46 = icmp eq %struct.r3964_block_header* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %49 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %48, i32 0, i32 1
  store %struct.r3964_block_header* null, %struct.r3964_block_header** %49, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %52 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  br label %93

55:                                               ; preds = %10
  %56 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %57 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %56, i32 0, i32 2
  %58 = load %struct.r3964_block_header*, %struct.r3964_block_header** %57, align 8
  store %struct.r3964_block_header* %58, %struct.r3964_block_header** %6, align 8
  br label %59

59:                                               ; preds = %88, %55
  %60 = load %struct.r3964_block_header*, %struct.r3964_block_header** %6, align 8
  %61 = icmp ne %struct.r3964_block_header* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.r3964_block_header*, %struct.r3964_block_header** %6, align 8
  %64 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %63, i32 0, i32 0
  %65 = load %struct.r3964_block_header*, %struct.r3964_block_header** %64, align 8
  %66 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %67 = icmp eq %struct.r3964_block_header* %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %70 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %69, i32 0, i32 0
  %71 = load %struct.r3964_block_header*, %struct.r3964_block_header** %70, align 8
  %72 = load %struct.r3964_block_header*, %struct.r3964_block_header** %6, align 8
  %73 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %72, i32 0, i32 0
  store %struct.r3964_block_header* %71, %struct.r3964_block_header** %73, align 8
  %74 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %75 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.r3964_block_header*, %struct.r3964_block_header** %6, align 8
  %79 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %78, i32 0, i32 0
  %80 = load %struct.r3964_block_header*, %struct.r3964_block_header** %79, align 8
  %81 = icmp eq %struct.r3964_block_header* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = load %struct.r3964_block_header*, %struct.r3964_block_header** %6, align 8
  %84 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %85 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %84, i32 0, i32 1
  store %struct.r3964_block_header* %83, %struct.r3964_block_header** %85, align 8
  br label %86

86:                                               ; preds = %82, %68
  br label %92

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.r3964_block_header*, %struct.r3964_block_header** %6, align 8
  %90 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %89, i32 0, i32 0
  %91 = load %struct.r3964_block_header*, %struct.r3964_block_header** %90, align 8
  store %struct.r3964_block_header* %91, %struct.r3964_block_header** %6, align 8
  br label %59

92:                                               ; preds = %86, %59
  br label %93

93:                                               ; preds = %92, %50
  %94 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %95 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %94, i32 0, i32 3
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %99 = call i32 @kfree(%struct.r3964_block_header* %98)
  %100 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %101 = call i32 @TRACE_M(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.r3964_block_header* %100)
  %102 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %103 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %102, i32 0, i32 2
  %104 = load %struct.r3964_block_header*, %struct.r3964_block_header** %103, align 8
  %105 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %106 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %105, i32 0, i32 1
  %107 = load %struct.r3964_block_header*, %struct.r3964_block_header** %106, align 8
  %108 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %109 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, %struct.r3964_block_header*, %struct.r3964_block_header*, ...) @TRACE_Q(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.r3964_block_header* %104, %struct.r3964_block_header* %107, i32 %110)
  br label %112

112:                                              ; preds = %93, %9
  ret void
}

declare dso_local i32 @TRACE_Q(i8*, %struct.r3964_block_header*, %struct.r3964_block_header*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.r3964_block_header*) #1

declare dso_local i32 @TRACE_M(i8*, %struct.r3964_block_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
