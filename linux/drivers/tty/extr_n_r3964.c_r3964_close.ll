; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_r3964_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_r3964_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.r3964_message* }
%struct.r3964_message = type { %struct.r3964_message*, %struct.r3964_message*, %struct.r3964_message*, i32, i32*, %struct.r3964_message*, i32, i64, %struct.r3964_message*, i32 }
%struct.r3964_info = type { %struct.r3964_info*, %struct.r3964_info*, %struct.r3964_info*, i32, i32*, %struct.r3964_info*, i32, i64, %struct.r3964_info*, i32 }
%struct.r3964_client_info = type { %struct.r3964_client_info*, %struct.r3964_client_info*, %struct.r3964_client_info*, i32, i32*, %struct.r3964_client_info*, i32, i64, %struct.r3964_client_info*, i32 }
%struct.r3964_block_header = type { %struct.r3964_block_header*, %struct.r3964_block_header*, %struct.r3964_block_header*, i32, i32*, %struct.r3964_block_header*, i32, i64, %struct.r3964_block_header*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"r3964_close - msg kfree %p\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"r3964_close - client kfree %p\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"r3964_close - rx_buf kfree %p\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"r3964_close - tx_buf kfree %p\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"r3964_close - info kfree %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @r3964_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3964_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca %struct.r3964_client_info*, align 8
  %5 = alloca %struct.r3964_client_info*, align 8
  %6 = alloca %struct.r3964_message*, align 8
  %7 = alloca %struct.r3964_block_header*, align 8
  %8 = alloca %struct.r3964_block_header*, align 8
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %13 = bitcast %struct.r3964_message* %12 to %struct.r3964_info*
  store %struct.r3964_info* %13, %struct.r3964_info** %3, align 8
  %14 = call i32 @TRACE_L(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %16 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %15, i32 0, i32 9
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %19 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %18, i32 0, i32 8
  %20 = load %struct.r3964_info*, %struct.r3964_info** %19, align 8
  %21 = bitcast %struct.r3964_info* %20 to %struct.r3964_client_info*
  store %struct.r3964_client_info* %21, %struct.r3964_client_info** %4, align 8
  br label %22

22:                                               ; preds = %48, %1
  %23 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %24 = icmp ne %struct.r3964_client_info* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %27 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %26, i32 0, i32 2
  %28 = load %struct.r3964_client_info*, %struct.r3964_client_info** %27, align 8
  store %struct.r3964_client_info* %28, %struct.r3964_client_info** %5, align 8
  br label %29

29:                                               ; preds = %47, %25
  %30 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %31 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %36 = bitcast %struct.r3964_info* %35 to %struct.r3964_message*
  %37 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %38 = bitcast %struct.r3964_client_info* %37 to %struct.r3964_message*
  %39 = call %struct.r3964_message* @remove_msg(%struct.r3964_message* %36, %struct.r3964_message* %38)
  store %struct.r3964_message* %39, %struct.r3964_message** %6, align 8
  %40 = load %struct.r3964_message*, %struct.r3964_message** %6, align 8
  %41 = icmp ne %struct.r3964_message* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.r3964_message*, %struct.r3964_message** %6, align 8
  %44 = call i32 @kfree(%struct.r3964_message* %43)
  %45 = load %struct.r3964_message*, %struct.r3964_message** %6, align 8
  %46 = call i32 @TRACE_M(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.r3964_message* %45)
  br label %47

47:                                               ; preds = %42, %34
  br label %29

48:                                               ; preds = %29
  %49 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %50 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @put_pid(i32 %51)
  %53 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %54 = bitcast %struct.r3964_client_info* %53 to %struct.r3964_message*
  %55 = call i32 @kfree(%struct.r3964_message* %54)
  %56 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %57 = bitcast %struct.r3964_client_info* %56 to %struct.r3964_message*
  %58 = call i32 @TRACE_M(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.r3964_message* %57)
  %59 = load %struct.r3964_client_info*, %struct.r3964_client_info** %5, align 8
  store %struct.r3964_client_info* %59, %struct.r3964_client_info** %4, align 8
  br label %22

60:                                               ; preds = %22
  %61 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %62 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %61, i32 0, i32 3
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %66 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %65, i32 0, i32 5
  %67 = load %struct.r3964_info*, %struct.r3964_info** %66, align 8
  %68 = bitcast %struct.r3964_info* %67 to %struct.r3964_block_header*
  store %struct.r3964_block_header* %68, %struct.r3964_block_header** %7, align 8
  %69 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %70 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %72 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %71, i32 0, i32 5
  store %struct.r3964_info* null, %struct.r3964_info** %72, align 8
  %73 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %74 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %73, i32 0, i32 3
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %80, %60
  %78 = load %struct.r3964_block_header*, %struct.r3964_block_header** %7, align 8
  %79 = icmp ne %struct.r3964_block_header* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.r3964_block_header*, %struct.r3964_block_header** %7, align 8
  %82 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %81, i32 0, i32 2
  %83 = load %struct.r3964_block_header*, %struct.r3964_block_header** %82, align 8
  store %struct.r3964_block_header* %83, %struct.r3964_block_header** %8, align 8
  %84 = load %struct.r3964_block_header*, %struct.r3964_block_header** %7, align 8
  %85 = bitcast %struct.r3964_block_header* %84 to %struct.r3964_message*
  %86 = call i32 @kfree(%struct.r3964_message* %85)
  %87 = load %struct.r3964_block_header*, %struct.r3964_block_header** %8, align 8
  store %struct.r3964_block_header* %87, %struct.r3964_block_header** %7, align 8
  br label %77

88:                                               ; preds = %77
  %89 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %90 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %89, i32 0, i32 1
  %91 = load %struct.r3964_info*, %struct.r3964_info** %90, align 8
  %92 = bitcast %struct.r3964_info* %91 to %struct.r3964_message*
  %93 = call i32 @kfree(%struct.r3964_message* %92)
  %94 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %95 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %94, i32 0, i32 1
  %96 = load %struct.r3964_info*, %struct.r3964_info** %95, align 8
  %97 = bitcast %struct.r3964_info* %96 to %struct.r3964_message*
  %98 = call i32 @TRACE_M(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.r3964_message* %97)
  %99 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %100 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %99, i32 0, i32 0
  %101 = load %struct.r3964_info*, %struct.r3964_info** %100, align 8
  %102 = bitcast %struct.r3964_info* %101 to %struct.r3964_message*
  %103 = call i32 @kfree(%struct.r3964_message* %102)
  %104 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %105 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %104, i32 0, i32 0
  %106 = load %struct.r3964_info*, %struct.r3964_info** %105, align 8
  %107 = bitcast %struct.r3964_info* %106 to %struct.r3964_message*
  %108 = call i32 @TRACE_M(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.r3964_message* %107)
  %109 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %110 = bitcast %struct.r3964_info* %109 to %struct.r3964_message*
  %111 = call i32 @kfree(%struct.r3964_message* %110)
  %112 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %113 = bitcast %struct.r3964_info* %112 to %struct.r3964_message*
  %114 = call i32 @TRACE_M(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), %struct.r3964_message* %113)
  ret void
}

declare dso_local i32 @TRACE_L(i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.r3964_message* @remove_msg(%struct.r3964_message*, %struct.r3964_message*) #1

declare dso_local i32 @kfree(%struct.r3964_message*) #1

declare dso_local i32 @TRACE_M(i8*, %struct.r3964_message*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
