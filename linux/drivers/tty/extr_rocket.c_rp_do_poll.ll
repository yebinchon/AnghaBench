; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_rocket.c_rp_do_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_rocket.c_rp_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_7__ = type { i64, i32* }

@max_board = common dso_local global i32 0, align 4
@rcktpt_io_addr = common dso_local global i64* null, align 8
@rp_table = common dso_local global i32* null, align 8
@xmit_flags = common dso_local global i32* null, align 8
@rocketModel = common dso_local global %struct.TYPE_8__* null, align 8
@rp_num_ports_open = common dso_local global i32 0, align 4
@rocket_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_PERIOD = common dso_local global i64 0, align 8
@isPCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rp_do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_do_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %131, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @max_board, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %134

17:                                               ; preds = %13
  %18 = load i64*, i64** @rcktpt_io_addr, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %131

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.TYPE_7__* @sCtlNumToCtlPtr(i32 %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @sGetControllerIntStatus(%struct.TYPE_7__* %28)
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %82, %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %85

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call zeroext i8 @sGetAiopIntStatus(%struct.TYPE_7__* %50, i32 %51)
  store i8 %52, i8* %11, align 1
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %73, %45
  %54 = load i8, i8* %11, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @GetLineNumber(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** @rp_table, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rp_handle_port(i32 %70)
  br label %72

72:                                               ; preds = %61, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = ashr i32 %75, 1
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %11, align 1
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %53

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %33
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %30

85:                                               ; preds = %30
  %86 = load i32*, i32** @xmit_flags, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rocketModel, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %95, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 24
  %112 = lshr i32 %111, 3
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 7
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @GetLineNumber(i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32*, i32** @rp_table, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @rp_do_transmit(i32 %123)
  br label %125

125:                                              ; preds = %109, %103
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %94

129:                                              ; preds = %94
  br label %130

130:                                              ; preds = %129, %85
  br label %131

131:                                              ; preds = %130, %24
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %13

134:                                              ; preds = %13
  %135 = call i64 @atomic_read(i32* @rp_num_ports_open)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i64, i64* @jiffies, align 8
  %139 = load i64, i64* @POLL_PERIOD, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @mod_timer(i32* @rocket_timer, i64 %140)
  br label %142

142:                                              ; preds = %137, %134
  ret void
}

declare dso_local %struct.TYPE_7__* @sCtlNumToCtlPtr(i32) #1

declare dso_local i32 @sGetControllerIntStatus(%struct.TYPE_7__*) #1

declare dso_local zeroext i8 @sGetAiopIntStatus(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetLineNumber(i32, i32, i32) #1

declare dso_local i32 @rp_handle_port(i32) #1

declare dso_local i32 @rp_do_transmit(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
