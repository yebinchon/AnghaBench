; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_do_send_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_do_send_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32, i64, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@ipwireless_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@HW_VERSION_1 = common dso_local global i64 0, align 8
@IODWR = common dso_local global i64 0, align 8
@DCR_TXDONE = common dso_local global i16 0, align 2
@IODCR = common dso_local global i64 0, align 8
@HW_VERSION_2 = common dso_local global i64 0, align 8
@MEMRX_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*, i8*, i32)* @do_send_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send_fragment(%struct.ipw_hardware* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_hardware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32 (...) @start_timing()
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ugt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i64, i64* @ipwireless_debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dump_data_bytes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %29 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %28, i32 0, i32 2
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %33 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @swap_packet_bitfield_to_le(i8* %34)
  %36 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %37 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HW_VERSION_1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = trunc i32 %42 to i16
  %44 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %45 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IODWR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outw(i16 zeroext %43, i64 %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %88, %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, i16* %9, align 2
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  %63 = load i32, i32* %6, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %54
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = load i16, i16* %9, align 2
  %75 = zext i16 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %9, align 2
  br label %78

78:                                               ; preds = %65, %54
  %79 = load i16, i16* %9, align 2
  %80 = call zeroext i16 @cpu_to_le16(i16 zeroext %79)
  store i16 %80, i16* %10, align 2
  %81 = load i16, i16* %10, align 2
  %82 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %83 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IODWR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i16 zeroext %81, i64 %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 2
  store i32 %90, i32* %7, align 4
  br label %50

91:                                               ; preds = %50
  %92 = load i16, i16* @DCR_TXDONE, align 2
  %93 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %94 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IODCR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outw(i16 zeroext %92, i64 %97)
  br label %171

99:                                               ; preds = %27
  %100 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %101 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HW_VERSION_2, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %170

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  %107 = trunc i32 %106 to i16
  %108 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %109 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @outw(i16 zeroext %107, i64 %110)
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %148, %105
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %151

116:                                              ; preds = %112
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, i16* %11, align 2
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  %125 = load i32, i32* %6, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %116
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl i32 %134, 8
  %136 = load i16, i16* %11, align 2
  %137 = zext i16 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i16
  store i16 %139, i16* %11, align 2
  br label %140

140:                                              ; preds = %127, %116
  %141 = load i16, i16* %11, align 2
  %142 = call zeroext i16 @cpu_to_le16(i16 zeroext %141)
  store i16 %142, i16* %12, align 2
  %143 = load i16, i16* %12, align 2
  %144 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %145 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @outw(i16 zeroext %143, i64 %146)
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, 2
  store i32 %150, i32* %7, align 4
  br label %112

151:                                              ; preds = %112
  br label %152

152:                                              ; preds = %156, %151
  %153 = load i32, i32* %7, align 4
  %154 = and i32 %153, 3
  %155 = icmp ne i32 %154, 2
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %158 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @outw(i16 zeroext -8531, i64 %159)
  %161 = load i32, i32* %7, align 4
  %162 = add i32 %161, 2
  store i32 %162, i32* %7, align 4
  br label %152

163:                                              ; preds = %152
  %164 = load i32, i32* @MEMRX_RX, align 4
  %165 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %166 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %165, i32 0, i32 3
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = call i32 @writew(i32 %164, i32* %168)
  br label %170

170:                                              ; preds = %163, %99
  br label %171

171:                                              ; preds = %170, %91
  %172 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %173 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %172, i32 0, i32 2
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @end_write_timing(i32 %176)
  ret void
}

declare dso_local i32 @start_timing(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dump_data_bytes(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swap_packet_bitfield_to_le(i8*) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local zeroext i16 @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @end_write_timing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
