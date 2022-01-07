; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_dell_debugfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_dell_debugfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.calling_interface_buffer = type { i32* }

@CLASS_INFO = common dso_local global i32 0, align 4
@SELECT_RFKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"return:\09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"status:\090x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Bit 0 : Hardware switch supported:   %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Bit 1 : Wifi locator supported:      %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Bit 2 : Wifi is supported:           %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Bit 3 : Bluetooth is supported:      %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Bit 4 : WWAN is supported:           %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Bit 5 : Wireless keyboard supported: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Bit 6 : UWB supported:               %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Bit 7 : WiGig supported:             %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Bit 8 : Wifi is installed:           %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Bit 9 : Bluetooth is installed:      %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Bit 10: WWAN is installed:           %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Bit 11: UWB installed:               %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Bit 12: WiGig installed:             %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Bit 16: Hardware switch is on:       %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Bit 17: Wifi is blocked:             %lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Bit 18: Bluetooth is blocked:        %lu\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Bit 19: WWAN is blocked:             %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Bit 20: UWB is blocked:              %lu\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Bit 21: WiGig is blocked:            %lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"\0Ahwswitch_return:\09%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"hwswitch_state:\090x%X\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Bit 0 : Wifi controlled by switch:      %lu\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Bit 1 : Bluetooth controlled by switch: %lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Bit 2 : WWAN controlled by switch:      %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Bit 3 : UWB controlled by switch:       %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Bit 4 : WiGig controlled by switch:     %lu\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Bit 7 : Wireless switch config locked:  %lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Bit 8 : Wifi locator enabled:           %lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"Bit 15: Wifi locator setting locked:    %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dell_debugfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_debugfs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.calling_interface_buffer, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %6, i32 0, i32 0, i32 0, i32 0)
  %12 = load i32, i32* @CLASS_INFO, align 4
  %13 = load i32, i32* @SELECT_RFKILL, align 4
  %14 = call i32 @dell_send_request(%struct.calling_interface_buffer* %6, i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %209

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %6, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %6, i32 2, i32 0, i32 0, i32 0)
  %25 = load i32, i32* @CLASS_INFO, align 4
  %26 = load i32, i32* @SELECT_RFKILL, align 4
  %27 = call i32 @dell_send_request(%struct.calling_interface_buffer* %6, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %209

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %6, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @BIT(i32 0)
  %46 = and i32 %44, %45
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @BIT(i32 1)
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 1
  %53 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @BIT(i32 2)
  %57 = and i32 %55, %56
  %58 = ashr i32 %57, 2
  %59 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @BIT(i32 3)
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 3
  %65 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @BIT(i32 4)
  %69 = and i32 %67, %68
  %70 = ashr i32 %69, 4
  %71 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @BIT(i32 5)
  %75 = and i32 %73, %74
  %76 = ashr i32 %75, 5
  %77 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @BIT(i32 6)
  %81 = and i32 %79, %80
  %82 = ashr i32 %81, 6
  %83 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @BIT(i32 7)
  %87 = and i32 %85, %86
  %88 = ashr i32 %87, 7
  %89 = call i32 @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @BIT(i32 8)
  %93 = and i32 %91, %92
  %94 = ashr i32 %93, 8
  %95 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @BIT(i32 9)
  %99 = and i32 %97, %98
  %100 = ashr i32 %99, 9
  %101 = call i32 @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @BIT(i32 10)
  %105 = and i32 %103, %104
  %106 = ashr i32 %105, 10
  %107 = call i32 @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @BIT(i32 11)
  %111 = and i32 %109, %110
  %112 = ashr i32 %111, 11
  %113 = call i32 @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %112)
  %114 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @BIT(i32 12)
  %117 = and i32 %115, %116
  %118 = ashr i32 %117, 12
  %119 = call i32 @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %118)
  %120 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @BIT(i32 16)
  %123 = and i32 %121, %122
  %124 = ashr i32 %123, 16
  %125 = call i32 @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @BIT(i32 17)
  %129 = and i32 %127, %128
  %130 = ashr i32 %129, 17
  %131 = call i32 @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %130)
  %132 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @BIT(i32 18)
  %135 = and i32 %133, %134
  %136 = ashr i32 %135, 18
  %137 = call i32 @seq_printf(%struct.seq_file* %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @BIT(i32 19)
  %141 = and i32 %139, %140
  %142 = ashr i32 %141, 19
  %143 = call i32 @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %142)
  %144 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @BIT(i32 20)
  %147 = and i32 %145, %146
  %148 = ashr i32 %147, 20
  %149 = call i32 @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 %148)
  %150 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @BIT(i32 21)
  %153 = and i32 %151, %152
  %154 = ashr i32 %153, 21
  %155 = call i32 @seq_printf(%struct.seq_file* %150, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %157)
  %159 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @seq_printf(%struct.seq_file* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @BIT(i32 0)
  %165 = and i32 %163, %164
  %166 = call i32 @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 %165)
  %167 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @BIT(i32 1)
  %170 = and i32 %168, %169
  %171 = ashr i32 %170, 1
  %172 = call i32 @seq_printf(%struct.seq_file* %167, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i32 %171)
  %173 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @BIT(i32 2)
  %176 = and i32 %174, %175
  %177 = ashr i32 %176, 2
  %178 = call i32 @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i32 %177)
  %179 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @BIT(i32 3)
  %182 = and i32 %180, %181
  %183 = ashr i32 %182, 3
  %184 = call i32 @seq_printf(%struct.seq_file* %179, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i32 %183)
  %185 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @BIT(i32 4)
  %188 = and i32 %186, %187
  %189 = ashr i32 %188, 4
  %190 = call i32 @seq_printf(%struct.seq_file* %185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 %189)
  %191 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @BIT(i32 7)
  %194 = and i32 %192, %193
  %195 = ashr i32 %194, 7
  %196 = call i32 @seq_printf(%struct.seq_file* %191, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i32 %195)
  %197 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @BIT(i32 8)
  %200 = and i32 %198, %199
  %201 = ashr i32 %200, 8
  %202 = call i32 @seq_printf(%struct.seq_file* %197, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i32 %201)
  %203 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @BIT(i32 15)
  %206 = and i32 %204, %205
  %207 = ashr i32 %206, 15
  %208 = call i32 @seq_printf(%struct.seq_file* %203, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 %207)
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %32, %30, %17
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
