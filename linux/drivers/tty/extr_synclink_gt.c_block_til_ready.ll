; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.slgt_info = type { i32, %struct.tty_port }
%struct.tty_port = type { i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s block_til_ready\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s block_til_ready wait\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s block_til_ready ready, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.slgt_info*)* @block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_til_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.slgt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.slgt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.slgt_info* %2, %struct.slgt_info** %7, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  store i32 0, i32* %9, align 4
  %16 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 1
  store %struct.tty_port* %17, %struct.tty_port** %12, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DBGINFO(i8* %24)
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %34 = call i64 @tty_io_error(%struct.tty_struct* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %3
  %37 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %38 = call i32 @tty_port_set_active(%struct.tty_port* %37, i32 1)
  store i32 0, i32* %4, align 4
  br label %165

39:                                               ; preds = %32
  %40 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %41 = call i64 @C_CLOCAL(%struct.tty_struct* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %39
  store i32 0, i32* %8, align 4
  %45 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %46 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %45, i32 0, i32 3
  %47 = call i32 @add_wait_queue(i32* %46, i32* @wait)
  %48 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 0
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %53 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %61 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %44, %116
  %65 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %66 = call i64 @C_BAUD(%struct.tty_struct* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %70 = call i64 @tty_port_initialized(%struct.tty_port* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %74 = call i32 @tty_port_raise_dtr_rts(%struct.tty_port* %73)
  br label %75

75:                                               ; preds = %72, %68, %64
  %76 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %77 = call i32 @set_current_state(i32 %76)
  %78 = load %struct.file*, %struct.file** %6, align 8
  %79 = call i64 @tty_hung_up_p(%struct.file* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %83 = call i64 @tty_port_initialized(%struct.tty_port* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %87 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  br label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @ERESTARTSYS, align 4
  %97 = sub nsw i32 0, %96
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ %94, %92 ], [ %97, %95 ]
  store i32 %99, i32* %8, align 4
  br label %130

100:                                              ; preds = %81
  %101 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %102 = call i32 @tty_port_carrier_raised(%struct.tty_port* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %100
  br label %130

109:                                              ; preds = %105
  %110 = load i32, i32* @current, align 4
  %111 = call i64 @signal_pending(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @ERESTARTSYS, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %130

116:                                              ; preds = %109
  %117 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %118 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @DBGINFO(i8* %123)
  %125 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %126 = call i32 @tty_unlock(%struct.tty_struct* %125)
  %127 = call i32 (...) @schedule()
  %128 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %129 = call i32 @tty_lock(%struct.tty_struct* %128)
  br label %64

130:                                              ; preds = %113, %108, %98
  %131 = load i32, i32* @TASK_RUNNING, align 4
  %132 = call i32 @set_current_state(i32 %131)
  %133 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %134 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %133, i32 0, i32 3
  %135 = call i32 @remove_wait_queue(i32* %134, i32* @wait)
  %136 = load %struct.file*, %struct.file** %6, align 8
  %137 = call i64 @tty_hung_up_p(%struct.file* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %130
  %140 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %141 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %130
  %145 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %146 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %144
  %152 = load %struct.tty_port*, %struct.tty_port** %12, align 8
  %153 = call i32 @tty_port_set_active(%struct.tty_port* %152, i32 1)
  br label %154

154:                                              ; preds = %151, %144
  %155 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %156 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @DBGINFO(i8* %162)
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %154, %36
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_active(%struct.tty_port*, i32) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @tty_port_raise_dtr_rts(%struct.tty_port*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @tty_port_carrier_raised(%struct.tty_port*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
