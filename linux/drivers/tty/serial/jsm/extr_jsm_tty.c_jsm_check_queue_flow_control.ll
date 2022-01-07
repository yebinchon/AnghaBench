; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_check_queue_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_check_queue_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.board_ops* }
%struct.board_ops = type { i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)* }

@RQUEUEMASK = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@CH_RECEIVER_OFF = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Internal queue hit hilevel mark (%d)! Turning off interrupts\0A\00", align 1
@IXOFF = common dso_local global i32 0, align 4
@MAX_STOPS_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sending stop char! Times sent: %x\0A\00", align 1
@RQUEUESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Internal queue hit lowlevel mark (%d)! Turning on interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Sending start char!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsm_check_queue_flow_control(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca %struct.board_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.board_ops*, %struct.board_ops** %8, align 8
  store %struct.board_ops* %9, %struct.board_ops** %3, align 8
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %14 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i64, i64* @RQUEUEMASK, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %97

29:                                               ; preds = %26
  %30 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %31 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CRTSCTS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %38 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CH_RECEIVER_OFF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %36
  %44 = load %struct.board_ops*, %struct.board_ops** %3, align 8
  %45 = getelementptr inbounds %struct.board_ops, %struct.board_ops* %44, i32 0, i32 3
  %46 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %45, align 8
  %47 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %48 = call i32 %46(%struct.jsm_channel* %47)
  %49 = load i32, i32* @CH_RECEIVER_OFF, align 4
  %50 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %51 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @READ, align 4
  %55 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %56 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %54, i32* %58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %43, %36
  br label %96

62:                                               ; preds = %29
  %63 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %64 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IXOFF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %62
  %70 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %71 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MAX_STOPS_SENT, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.board_ops*, %struct.board_ops** %3, align 8
  %77 = getelementptr inbounds %struct.board_ops, %struct.board_ops* %76, i32 0, i32 2
  %78 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %77, align 8
  %79 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %80 = call i32 %78(%struct.jsm_channel* %79)
  %81 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %82 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @READ, align 4
  %86 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %87 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %86, i32 0, i32 5
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %91 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %85, i32* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %75, %69
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %61
  br label %97

97:                                               ; preds = %96, %26
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @RQUEUESIZE, align 4
  %100 = sdiv i32 %99, 2
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %164

102:                                              ; preds = %97
  %103 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %104 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CRTSCTS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %102
  %110 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %111 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CH_RECEIVER_OFF, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %109
  %117 = load %struct.board_ops*, %struct.board_ops** %3, align 8
  %118 = getelementptr inbounds %struct.board_ops, %struct.board_ops* %117, i32 0, i32 1
  %119 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %118, align 8
  %120 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %121 = call i32 %119(%struct.jsm_channel* %120)
  %122 = load i32, i32* @CH_RECEIVER_OFF, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %125 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @READ, align 4
  %129 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %130 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %129, i32 0, i32 5
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %128, i32* %132, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %116, %109
  br label %163

136:                                              ; preds = %102
  %137 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %138 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IXOFF, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %136
  %144 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %145 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %150 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %149, i32 0, i32 6
  store i32 0, i32* %150, align 8
  %151 = load %struct.board_ops*, %struct.board_ops** %3, align 8
  %152 = getelementptr inbounds %struct.board_ops, %struct.board_ops* %151, i32 0, i32 0
  %153 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %152, align 8
  %154 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %155 = call i32 %153(%struct.jsm_channel* %154)
  %156 = load i32, i32* @READ, align 4
  %157 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %158 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %157, i32 0, i32 5
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %156, i32* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %148, %143, %136
  br label %163

163:                                              ; preds = %162, %135
  br label %164

164:                                              ; preds = %163, %97
  ret void
}

declare dso_local i32 @jsm_dbg(i32, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
