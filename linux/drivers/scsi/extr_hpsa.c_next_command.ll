; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_next_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i64, i32, %struct.TYPE_2__, %struct.reply_queue_buffer* }
%struct.TYPE_2__ = type { i32 (%struct.ctlr_info.0*, i64)* }
%struct.ctlr_info.0 = type opaque
%struct.reply_queue_buffer = type { i32*, i64, i32 }

@CFGTBL_Trans_io_accel1 = common dso_local global i32 0, align 4
@CFGTBL_Trans_Performant = common dso_local global i32 0, align 4
@FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i64)* @next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_command(%struct.ctlr_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reply_queue_buffer*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 4
  %10 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %10, i64 %11
  store %struct.reply_queue_buffer* %12, %struct.reply_queue_buffer** %7, align 8
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %14 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CFGTBL_Trans_io_accel1, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ctlr_info.0*, i64)*, i32 (%struct.ctlr_info.0*, i64)** %22, align 8
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %25 = bitcast %struct.ctlr_info* %24 to %struct.ctlr_info.0*
  %26 = load i64, i64* %5, align 8
  %27 = call i32 %23(%struct.ctlr_info.0* %25, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %2
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %30 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CFGTBL_Trans_Performant, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %41 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ctlr_info.0*, i64)*, i32 (%struct.ctlr_info.0*, i64)** %42, align 8
  %44 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %45 = bitcast %struct.ctlr_info* %44 to %struct.ctlr_info.0*
  %46 = load i64, i64* %5, align 8
  %47 = call i32 %43(%struct.ctlr_info.0* %45, i64 %46)
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %28
  %49 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %53 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 1
  %58 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %48
  %63 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %76 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %75, i32 0, i32 2
  %77 = call i32 @atomic_dec(i32* %76)
  br label %80

78:                                               ; preds = %48
  %79 = load i32, i32* @FIFO_EMPTY, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %62
  %81 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %85 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %90 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = xor i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %88, %80
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %39, %19
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
