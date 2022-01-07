; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.ktermios = type { i32, i32 }
%struct.dz_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@DZ_CS5 = common dso_local global i32 0, align 4
@DZ_CS6 = common dso_local global i32 0, align 4
@DZ_CS7 = common dso_local global i32 0, align 4
@DZ_CS8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@DZ_CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@DZ_PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@DZ_PARODD = common dso_local global i32 0, align 4
@DZ_B9600 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@DZ_RXENAB = common dso_local global i32 0, align 4
@DZ_LPR = common dso_local global i32 0, align 4
@DZ_OERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@DZ_FERR = common dso_local global i32 0, align 4
@DZ_PERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@DZ_BREAK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @dz_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dz_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.dz_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call %struct.dz_port* @to_dport(%struct.uart_port* %12)
  store %struct.dz_port* %13, %struct.dz_port** %7, align 8
  %14 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %15 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %19 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CSIZE, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %36 [
    i32 131, label %23
    i32 130, label %27
    i32 129, label %31
    i32 128, label %35
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* @DZ_CS5, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %40

27:                                               ; preds = %3
  %28 = load i32, i32* @DZ_CS6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %40

31:                                               ; preds = %3
  %32 = load i32, i32* @DZ_CS7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %3, %35
  %37 = load i32, i32* @DZ_CS8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %31, %27, %23
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @DZ_CSTOPB, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @DZ_PARENB, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %64 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PARODD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @DZ_PARODD, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %75 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %76 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %77 = call i32 @uart_get_baud_rate(%struct.uart_port* %74, %struct.ktermios* %75, %struct.ktermios* %76, i32 50, i32 9600)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @dz_encode_baud_rate(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %73
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %85 = call i32 @uart_get_baud_rate(%struct.uart_port* %83, %struct.ktermios* %84, %struct.ktermios* null, i32 50, i32 9600)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @dz_encode_baud_rate(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  store i32 9600, i32* %10, align 4
  %91 = load i32, i32* @DZ_B9600, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %82
  %93 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %73
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %102 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CREAD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i32, i32* @DZ_RXENAB, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %97
  %112 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %113 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %118 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %119 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @uart_update_timeout(%struct.uart_port* %117, i32 %120, i32 %121)
  %123 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %124 = load i32, i32* @DZ_LPR, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @dz_out(%struct.dz_port* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %129 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @DZ_OERR, align 4
  %131 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %132 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %135 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @INPCK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %111
  %141 = load i32, i32* @DZ_FERR, align 4
  %142 = load i32, i32* @DZ_PERR, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %145 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %140, %111
  %150 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %151 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IGNBRK, align 4
  %154 = load i32, i32* @BRKINT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @PARMRK, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %152, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %149
  %161 = load i32, i32* @DZ_BREAK, align 4
  %162 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %163 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %161
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %160, %149
  %168 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %171 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IGNPAR, align 4
  %174 = load i32, i32* @IGNBRK, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = load i32, i32* @IGNPAR, align 4
  %178 = load i32, i32* @IGNBRK, align 4
  %179 = or i32 %177, %178
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %167
  %182 = load i32, i32* @DZ_OERR, align 4
  %183 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %184 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %182
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %181, %167
  %189 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %190 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IGNPAR, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %188
  %196 = load i32, i32* @DZ_FERR, align 4
  %197 = load i32, i32* @DZ_PERR, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %200 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %195, %188
  %205 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %206 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @IGNBRK, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %204
  %212 = load i32, i32* @DZ_BREAK, align 4
  %213 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %214 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %212
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %211, %204
  %219 = load %struct.dz_port*, %struct.dz_port** %7, align 8
  %220 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  %222 = load i64, i64* %8, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  ret void
}

declare dso_local %struct.dz_port* @to_dport(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @dz_encode_baud_rate(i32) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @dz_out(%struct.dz_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
