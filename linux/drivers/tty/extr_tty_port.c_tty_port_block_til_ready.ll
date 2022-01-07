; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }
%struct.file = type { i32 }

@wait = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_port_block_til_ready(%struct.tty_port* %0, %struct.tty_struct* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.tty_port* %0, %struct.tty_port** %5, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  %13 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %14 = call i64 @tty_io_error(%struct.tty_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %18 = call i32 @tty_port_set_active(%struct.tty_port* %17, i32 1)
  store i32 0, i32* %4, align 4
  br label %151

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %7, align 8
  %21 = icmp eq %struct.file* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22, %19
  %30 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %31 = call i64 @C_BAUD(%struct.tty_struct* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %35 = call i32 @tty_port_raise_dtr_rts(%struct.tty_port* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %38 = call i32 @tty_port_set_active(%struct.tty_port* %37, i32 1)
  store i32 0, i32* %4, align 4
  br label %151

39:                                               ; preds = %22
  %40 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %41 = call i64 @C_CLOCAL(%struct.tty_struct* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %39
  store i32 0, i32* %9, align 4
  %45 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %46 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %45, i32 0, i32 1
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %50 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %54 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %58 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %57, i32 0, i32 1
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %44, %113
  %62 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %63 = call i64 @C_BAUD(%struct.tty_struct* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %67 = call i64 @tty_port_initialized(%struct.tty_port* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %71 = call i32 @tty_port_raise_dtr_rts(%struct.tty_port* %70)
  br label %72

72:                                               ; preds = %69, %65, %61
  %73 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %74 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %73, i32 0, i32 4
  %75 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %76 = call i32 @prepare_to_wait(i32* %74, i32* @wait, i32 %75)
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = call i64 @tty_hung_up_p(%struct.file* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %82 = call i64 @tty_port_initialized(%struct.tty_port* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %80, %72
  %85 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %86 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @ERESTARTSYS, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %119

98:                                               ; preds = %80
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %103 = call i64 @tty_port_carrier_raised(%struct.tty_port* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %98
  br label %119

106:                                              ; preds = %101
  %107 = load i32, i32* @current, align 4
  %108 = call i64 @signal_pending(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @ERESTARTSYS, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %119

113:                                              ; preds = %106
  %114 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %115 = call i32 @tty_unlock(%struct.tty_struct* %114)
  %116 = call i32 (...) @schedule()
  %117 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %118 = call i32 @tty_lock(%struct.tty_struct* %117)
  br label %61

119:                                              ; preds = %110, %105, %97
  %120 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %121 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %120, i32 0, i32 4
  %122 = call i32 @finish_wait(i32* %121, i32* @wait)
  %123 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %124 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %123, i32 0, i32 1
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load %struct.file*, %struct.file** %7, align 8
  %128 = call i64 @tty_hung_up_p(%struct.file* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %119
  %131 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %132 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %130, %119
  %136 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %137 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %141 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %140, i32 0, i32 1
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %148 = call i32 @tty_port_set_active(%struct.tty_port* %147, i32 1)
  br label %149

149:                                              ; preds = %146, %135
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %36, %16
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_active(%struct.tty_port*, i32) #1

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_raise_dtr_rts(%struct.tty_port*) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i64 @tty_port_carrier_raised(%struct.tty_port*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
