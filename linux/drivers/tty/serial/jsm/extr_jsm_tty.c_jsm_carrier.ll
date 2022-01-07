; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32, %struct.jsm_board* }
%struct.jsm_board = type { i32 }

@CARR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@UART_MSR_DCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mistat: %x D_CD: %x\0A\00", align 1
@CLOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"DCD: physical: %d virt: %d\0A\00", align 1
@CH_FCAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"carrier: virt DCD rose\0A\00", align 1
@CH_CD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"carrier: physical DCD rose\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @jsm_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsm_carrier(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca %struct.jsm_board*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CARR, align 4
  %7 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %8 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %7, i32 0, i32 4
  %9 = load %struct.jsm_board*, %struct.jsm_board** %8, align 8
  %10 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %9, i32 0, i32 0
  %11 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %6, i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %13 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %12, i32 0, i32 4
  %14 = load %struct.jsm_board*, %struct.jsm_board** %13, align 8
  store %struct.jsm_board* %14, %struct.jsm_board** %3, align 8
  %15 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %16 = icmp ne %struct.jsm_board* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %163

18:                                               ; preds = %1
  %19 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %20 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UART_MSR_DCD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i32, i32* @CARR, align 4
  %27 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %28 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %27, i32 0, i32 4
  %29 = load %struct.jsm_board*, %struct.jsm_board** %28, align 8
  %30 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %29, i32 0, i32 0
  %31 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %32 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %35 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @UART_MSR_DCD, align 4
  %38 = and i32 %36, %37
  %39 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %26, i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %38)
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %25, %18
  %41 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %42 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CLOCAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* @CARR, align 4
  %50 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %51 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %50, i32 0, i32 4
  %52 = load %struct.jsm_board*, %struct.jsm_board** %51, align 8
  %53 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %49, i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CH_FCAR, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* @CARR, align 4
  %68 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %69 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %68, i32 0, i32 4
  %70 = load %struct.jsm_board*, %struct.jsm_board** %69, align 8
  %71 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %70, i32 0, i32 0
  %72 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %67, i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %74 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %73, i32 0, i32 3
  %75 = call i64 @waitqueue_active(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %79 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %78, i32 0, i32 3
  %80 = call i32 @wake_up_interruptible(i32* %79)
  br label %81

81:                                               ; preds = %77, %66
  br label %82

82:                                               ; preds = %81, %63, %48
  %83 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %84 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CH_CD, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load i32, i32* @CARR, align 4
  %94 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %95 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %94, i32 0, i32 4
  %96 = load %struct.jsm_board*, %struct.jsm_board** %95, align 8
  %97 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %96, i32 0, i32 0
  %98 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %93, i32* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %100 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %99, i32 0, i32 3
  %101 = call i64 @waitqueue_active(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %105 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %104, i32 0, i32 3
  %106 = call i32 @wake_up_interruptible(i32* %105)
  br label %107

107:                                              ; preds = %103, %92
  br label %108

108:                                              ; preds = %107, %89, %82
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  %112 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %113 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CH_CD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %123 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %122, i32 0, i32 3
  %124 = call i64 @waitqueue_active(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %128 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %127, i32 0, i32 3
  %129 = call i32 @wake_up_interruptible(i32* %128)
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %118, %111, %108
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* @CH_FCAR, align 4
  %136 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %137 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %147

140:                                              ; preds = %131
  %141 = load i32, i32* @CH_FCAR, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %144 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %140, %134
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* @CH_CD, align 4
  %152 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %153 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %163

156:                                              ; preds = %147
  %157 = load i32, i32* @CH_CD, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %160 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %17, %156, %150
  ret void
}

declare dso_local i32 @jsm_dbg(i32, i32*, i8*, ...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
