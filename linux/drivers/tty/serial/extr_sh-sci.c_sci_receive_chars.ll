; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@SCxSR = common dso_local global i32 0, align 4
@PORT_SCI = common dso_local global i64 0, align 8
@SCxRDR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [13 x i8] c"frame error\0A\00", align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %3, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @SCxSR, align 4
  %17 = call i8* @serial_port_in(%struct.uart_port* %15, i32 %16)
  %18 = ptrtoint i8* %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = call zeroext i16 @SCxSR_RDxF(%struct.uart_port* %21)
  %23 = zext i16 %22 to i32
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %165

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %131
  %29 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = call i32 @sci_rxfill(%struct.uart_port* %30)
  %32 = call i32 @tty_buffer_request_room(%struct.tty_port* %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %148

36:                                               ; preds = %28
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PORT_SCI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = load i32, i32* @SCxRDR, align 4
  %45 = call i8* @serial_port_in(%struct.uart_port* %43, i32 %44)
  %46 = ptrtoint i8* %45 to i8
  store i8 %46, i8* %9, align 1
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = load i8, i8* %9, align 1
  %49 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %47, i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %57

52:                                               ; preds = %42
  %53 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %54 = load i8, i8* %9, align 1
  %55 = load i8, i8* @TTY_NORMAL, align 1
  %56 = call i32 @tty_insert_flip_char(%struct.tty_port* %53, i8 signext %54, i8 zeroext %55)
  br label %57

57:                                               ; preds = %52, %51
  br label %131

58:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %127, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %130

63:                                               ; preds = %59
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = load i32, i32* @SCxRDR, align 4
  %66 = call i8* @serial_port_in(%struct.uart_port* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = load i32, i32* @SCxSR, align 4
  %70 = call i8* @serial_port_in(%struct.uart_port* %68, i32 %69)
  %71 = ptrtoint i8* %70 to i16
  store i16 %71, i16* %7, align 2
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = load i8, i8* %10, align 1
  %74 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %72, i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  br label %127

81:                                               ; preds = %63
  %82 = load i16, i16* %7, align 2
  %83 = zext i16 %82 to i32
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = call zeroext i16 @SCxSR_FER(%struct.uart_port* %84)
  %86 = zext i16 %85 to i32
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load i8, i8* @TTY_FRAME, align 1
  store i8 %90, i8* %8, align 1
  %91 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_notice(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %122

100:                                              ; preds = %81
  %101 = load i16, i16* %7, align 2
  %102 = zext i16 %101 to i32
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = call zeroext i16 @SCxSR_PER(%struct.uart_port* %103)
  %105 = zext i16 %104 to i32
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = load i8, i8* @TTY_PARITY, align 1
  store i8 %109, i8* %8, align 1
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_notice(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %121

119:                                              ; preds = %100
  %120 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %120, i8* %8, align 1
  br label %121

121:                                              ; preds = %119, %108
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %124 = load i8, i8* %10, align 1
  %125 = load i8, i8* %8, align 1
  %126 = call i32 @tty_insert_flip_char(%struct.tty_port* %123, i8 signext %124, i8 zeroext %125)
  br label %127

127:                                              ; preds = %122, %76
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %59

130:                                              ; preds = %59
  br label %131

131:                                              ; preds = %130, %57
  %132 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %133 = load i32, i32* @SCxSR, align 4
  %134 = call i8* @serial_port_in(%struct.uart_port* %132, i32 %133)
  %135 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %136 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %137 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %136)
  %138 = call i32 @sci_clear_SCxSR(%struct.uart_port* %135, i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %28

148:                                              ; preds = %35
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %153 = call i32 @tty_flip_buffer_push(%struct.tty_port* %152)
  br label %165

154:                                              ; preds = %148
  %155 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %156 = load i32, i32* @SCxRDR, align 4
  %157 = call i8* @serial_port_in(%struct.uart_port* %155, i32 %156)
  %158 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %159 = load i32, i32* @SCxSR, align 4
  %160 = call i8* @serial_port_in(%struct.uart_port* %158, i32 %159)
  %161 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %162 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %163 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %162)
  %164 = call i32 @sci_clear_SCxSR(%struct.uart_port* %161, i32 %163)
  br label %165

165:                                              ; preds = %26, %154, %151
  ret void
}

declare dso_local i8* @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_RDxF(%struct.uart_port*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_port*, i32) #1

declare dso_local i32 @sci_rxfill(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 signext, i8 zeroext) #1

declare dso_local zeroext i16 @SCxSR_FER(%struct.uart_port*) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_PER(%struct.uart_port*) #1

declare dso_local i32 @sci_clear_SCxSR(%struct.uart_port*, i32) #1

declare dso_local i32 @SCxSR_RDxF_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
