; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { %struct.TYPE_4__, %struct.uart_pmac_port* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@CHAEXT = common dso_local global i32 0, align 4
@CHATxIP = common dso_local global i32 0, align 4
@CHARxIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ChanA interrupt while not open !\0A\00", align 1
@R0 = common dso_local global i32 0, align 4
@RES_H_IUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CHBEXT = common dso_local global i32 0, align 4
@CHBTxIP = common dso_local global i32 0, align 4
@CHBRxIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ChanB interrupt while not open !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmz_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmz_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_pmac_port*, align 8
  %6 = alloca %struct.uart_pmac_port*, align 8
  %7 = alloca %struct.uart_pmac_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_pmac_port*
  store %struct.uart_pmac_port* %12, %struct.uart_pmac_port** %5, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %15 = call %struct.uart_pmac_port* @pmz_get_port_A(%struct.uart_pmac_port* %14)
  store %struct.uart_pmac_port* %15, %struct.uart_pmac_port** %6, align 8
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %17 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %16, i32 0, i32 1
  %18 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %17, align 8
  store %struct.uart_pmac_port* %18, %struct.uart_pmac_port** %7, align 8
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %20 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %24 = load i32, i32* @R3, align 4
  %25 = call i32 @read_zsreg(%struct.uart_pmac_port* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CHAEXT, align 4
  %28 = load i32, i32* @CHATxIP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CHARxIP, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %2
  %35 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %36 = call i32 @ZS_IS_OPEN(%struct.uart_pmac_port* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %73

40:                                               ; preds = %34
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %42 = load i32, i32* @R0, align 4
  %43 = load i32, i32* @RES_H_IUS, align 4
  %44 = call i32 @write_zsreg(%struct.uart_pmac_port* %41, i32 %42, i32 %43)
  %45 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %46 = call i32 @zssync(%struct.uart_pmac_port* %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @CHAEXT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %53 = call i32 @pmz_status_handle(%struct.uart_pmac_port* %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @CHARxIP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %61 = call i32 @pmz_receive_chars(%struct.uart_pmac_port* %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @CHATxIP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %69 = call i32 @pmz_transmit_chars(%struct.uart_pmac_port* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %2
  br label %73

73:                                               ; preds = %72, %38
  %74 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %75 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @tty_flip_buffer_push(i32* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %89 = icmp ne %struct.uart_pmac_port* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %158

91:                                               ; preds = %87
  %92 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %93 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = call i32 @spin_lock(i32* %94)
  store i32 0, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @CHBEXT, align 4
  %98 = load i32, i32* @CHBTxIP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CHBRxIP, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %96, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %91
  %105 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %106 = call i32 @ZS_IS_OPEN(%struct.uart_pmac_port* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %143

110:                                              ; preds = %104
  %111 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %112 = load i32, i32* @R0, align 4
  %113 = load i32, i32* @RES_H_IUS, align 4
  %114 = call i32 @write_zsreg(%struct.uart_pmac_port* %111, i32 %112, i32 %113)
  %115 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %116 = call i32 @zssync(%struct.uart_pmac_port* %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @CHBEXT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %123 = call i32 @pmz_status_handle(%struct.uart_pmac_port* %122)
  br label %124

124:                                              ; preds = %121, %110
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @CHBRxIP, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %131 = call i32 @pmz_receive_chars(%struct.uart_pmac_port* %130)
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @CHBTxIP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %139 = call i32 @pmz_transmit_chars(%struct.uart_pmac_port* %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %91
  br label %143

143:                                              ; preds = %142, %108
  %144 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %145 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %152 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = call i32 @tty_flip_buffer_push(i32* %155)
  br label %157

157:                                              ; preds = %150, %143
  br label %158

158:                                              ; preds = %157, %90
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local %struct.uart_pmac_port* @pmz_get_port_A(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @ZS_IS_OPEN(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_debug(i8*, ...) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_status_handle(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_receive_chars(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_transmit_chars(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
