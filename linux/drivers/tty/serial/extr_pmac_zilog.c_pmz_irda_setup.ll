; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_irda_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_irda_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32* }

@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@ALL_SNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"transmitter didn't drain\0A\00", align 1
@Rx_CH_AV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"receiver didn't drain\0A\00", align 1
@DTR = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@CS8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"irda_setup timed out on get_version byte\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"IrDA: dongle version %d not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"irda_setup timed out on speed mode byte\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"irda_setup speed mode byte = %x (%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"IrDA setup for %ld bps, dongle version: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*, i64*)* @pmz_irda_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_irda_setup(%struct.uart_pmac_port* %0, i64* %1) #0 {
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  switch i64 %9, label %19 [
    i64 2400, label %10
    i64 4800, label %11
    i64 9600, label %12
    i64 19200, label %13
    i64 38400, label %14
    i64 57600, label %15
    i64 115200, label %16
    i64 1152000, label %17
    i64 4000000, label %18
  ]

10:                                               ; preds = %2
  store i32 83, i32* %5, align 4
  br label %21

11:                                               ; preds = %2
  store i32 82, i32* %5, align 4
  br label %21

12:                                               ; preds = %2
  store i32 81, i32* %5, align 4
  br label %21

13:                                               ; preds = %2
  store i32 80, i32* %5, align 4
  br label %21

14:                                               ; preds = %2
  store i32 79, i32* %5, align 4
  br label %21

15:                                               ; preds = %2
  store i32 78, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  store i32 77, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

19:                                               ; preds = %2
  store i32 81, i32* %5, align 4
  %20 = load i64*, i64** %4, align 8
  store i64 9600, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  store i32 10000, i32* %6, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %24 = load i32, i32* @R0, align 4
  %25 = call i32 @read_zsreg(%struct.uart_pmac_port* %23, i32 %24)
  %26 = load i32, i32* @Tx_BUF_EMP, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %31 = load i32, i32* @R1, align 4
  %32 = call i32 @read_zsreg(%struct.uart_pmac_port* %30, i32 %31)
  %33 = load i32, i32* @ALL_SNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i1 [ true, %22 ], [ %35, %29 ]
  br i1 %37, label %38, label %46

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @pmz_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %194

44:                                               ; preds = %38
  %45 = call i32 @udelay(i32 10)
  br label %22

46:                                               ; preds = %36
  store i32 100, i32* %6, align 4
  %47 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %48 = call i32 @read_zsdata(%struct.uart_pmac_port* %47)
  %49 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %50 = call i32 @read_zsdata(%struct.uart_pmac_port* %49)
  %51 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %52 = call i32 @read_zsdata(%struct.uart_pmac_port* %51)
  %53 = call i32 @mdelay(i32 10)
  br label %54

54:                                               ; preds = %70, %46
  %55 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %56 = load i32, i32* @R0, align 4
  %57 = call i32 @read_zsreg(%struct.uart_pmac_port* %55, i32 %56)
  %58 = load i32, i32* @Rx_CH_AV, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %63 = call i32 @read_zsdata(%struct.uart_pmac_port* %62)
  %64 = call i32 @mdelay(i32 10)
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 (i8*, ...) @pmz_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %194

70:                                               ; preds = %61
  br label %54

71:                                               ; preds = %54
  %72 = load i32, i32* @DTR, align 4
  %73 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @R5, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %72
  store i32 %79, i32* %77, align 4
  %80 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %81 = load i64, i64* @R5, align 8
  %82 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %83 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @R5, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @write_zsreg(%struct.uart_pmac_port* %80, i64 %81, i32 %87)
  %89 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %90 = call i32 @zssync(%struct.uart_pmac_port* %89)
  %91 = call i32 @mdelay(i32 1)
  %92 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %93 = load i32, i32* @CS8, align 4
  %94 = call i32 @pmz_convert_to_zs(%struct.uart_pmac_port* %92, i32 %93, i32 0, i32 19200)
  %95 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %96 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %97 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %95, i32* %98)
  %100 = call i32 @mdelay(i32 1)
  %101 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %102 = call i32 @write_zsdata(%struct.uart_pmac_port* %101, i32 1)
  store i32 5000, i32* %6, align 4
  br label %103

103:                                              ; preds = %116, %71
  %104 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %105 = load i32, i32* @R0, align 4
  %106 = call i32 @read_zsreg(%struct.uart_pmac_port* %104, i32 %105)
  %107 = load i32, i32* @Rx_CH_AV, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %6, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (i8*, ...) @pmz_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %167

116:                                              ; preds = %110
  %117 = call i32 @udelay(i32 10)
  br label %103

118:                                              ; preds = %103
  %119 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %120 = call i32 @read_zsdata(%struct.uart_pmac_port* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 (i8*, i64, ...) @pmz_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %125)
  br label %167

127:                                              ; preds = %118
  %128 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @write_zsdata(%struct.uart_pmac_port* %128, i32 %129)
  store i32 5000, i32* %6, align 4
  br label %131

131:                                              ; preds = %144, %127
  %132 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %133 = load i32, i32* @R0, align 4
  %134 = call i32 @read_zsreg(%struct.uart_pmac_port* %132, i32 %133)
  %135 = load i32, i32* @Rx_CH_AV, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %131
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %6, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 (i8*, ...) @pmz_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %167

144:                                              ; preds = %138
  %145 = call i32 @udelay(i32 10)
  br label %131

146:                                              ; preds = %131
  %147 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %148 = call i32 @read_zsdata(%struct.uart_pmac_port* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 (i8*, ...) @pmz_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i64*, i64** %4, align 8
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (i8*, i64, ...) @pmz_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %158, i32 %159)
  %161 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %162 = call i32 @read_zsdata(%struct.uart_pmac_port* %161)
  %163 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %164 = call i32 @read_zsdata(%struct.uart_pmac_port* %163)
  %165 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %166 = call i32 @read_zsdata(%struct.uart_pmac_port* %165)
  br label %167

167:                                              ; preds = %156, %142, %123, %114
  %168 = load i32, i32* @DTR, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %171 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @R5, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %169
  store i32 %176, i32* %174, align 4
  %177 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %178 = load i64, i64* @R5, align 8
  %179 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %180 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @R5, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @write_zsreg(%struct.uart_pmac_port* %177, i64 %178, i32 %184)
  %186 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %187 = call i32 @zssync(%struct.uart_pmac_port* %186)
  %188 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %189 = call i32 @read_zsdata(%struct.uart_pmac_port* %188)
  %190 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %191 = call i32 @read_zsdata(%struct.uart_pmac_port* %190)
  %192 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %193 = call i32 @read_zsdata(%struct.uart_pmac_port* %192)
  br label %194

194:                                              ; preds = %167, %68, %42
  ret void
}

declare dso_local i32 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @pmz_error(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_zsdata(%struct.uart_pmac_port*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_convert_to_zs(%struct.uart_pmac_port*, i32, i32, i32) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32*) #1

declare dso_local i32 @write_zsdata(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @pmz_info(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
