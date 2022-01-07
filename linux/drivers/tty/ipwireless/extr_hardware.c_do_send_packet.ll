; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_do_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_do_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i16, i32, i32, i32* }
%struct.ipw_tx_packet = type { i32, i16, i64, i32, i32 (i32, i32)*, i32, i32, i32 }
%union.nl_packet = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i8, i8, i32, i32, i32 }

@NL_FIRST_PACKET_HEADER_SIZE = common dso_local global i16 0, align 2
@NL_FOLLOWING_PACKET_HEADER_SIZE = common dso_local global i16 0, align 2
@NL_FIRST_PACKET = common dso_local global i32 0, align 4
@NL_LAST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*, %struct.ipw_tx_packet*)* @do_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send_packet(%struct.ipw_hardware* %0, %struct.ipw_tx_packet* %1) #0 {
  %3 = alloca %struct.ipw_hardware*, align 8
  %4 = alloca %struct.ipw_tx_packet*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %union.nl_packet, align 8
  %9 = alloca i64, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %3, align 8
  store %struct.ipw_tx_packet* %1, %struct.ipw_tx_packet** %4, align 8
  %10 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %11 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %14 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 4
  %16 = zext i16 %15 to i32
  %17 = sub nsw i32 %12, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %6, align 2
  %19 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %20 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i16, i16* @NL_FIRST_PACKET_HEADER_SIZE, align 2
  %25 = zext i16 %24 to i32
  br label %29

26:                                               ; preds = %2
  %27 = load i16, i16* @NL_FOLLOWING_PACKET_HEADER_SIZE, align 2
  %28 = zext i16 %27 to i32
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %7, align 2
  %32 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %33 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %5, align 2
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i16, i16* %6, align 2
  store i16 %46, i16* %5, align 2
  br label %47

47:                                               ; preds = %45, %29
  %48 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %49 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %54 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  %60 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %61 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %47
  %65 = load i32, i32* @NL_FIRST_PACKET, align 4
  %66 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %71 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = trunc i32 %72 to i8
  %74 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8 %73, i8* %75, align 8
  %76 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %77 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 8
  %80 = trunc i32 %79 to i8
  %81 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8 %80, i8* %82, align 1
  br label %83

83:                                               ; preds = %64, %47
  %84 = bitcast %union.nl_packet* %8 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = load i16, i16* %7, align 2
  %87 = zext i16 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %90 = bitcast %struct.ipw_tx_packet* %89 to i8*
  %91 = getelementptr inbounds i8, i8* %90, i64 48
  %92 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %93 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %92, i32 0, i32 1
  %94 = load i16, i16* %93, align 4
  %95 = zext i16 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  %98 = load i16, i16* %5, align 2
  %99 = call i32 @memcpy(i64 %88, i8* %97, i16 zeroext %98)
  %100 = load i16, i16* %5, align 2
  %101 = zext i16 %100 to i32
  %102 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %103 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %102, i32 0, i32 1
  %104 = load i16, i16* %103, align 4
  %105 = zext i16 %104 to i32
  %106 = add nsw i32 %105, %101
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %103, align 4
  %108 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %109 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %113 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %112, i32 0, i32 1
  %114 = load i16, i16* %113, align 4
  %115 = zext i16 %114 to i32
  %116 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %117 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %83
  %121 = load i32, i32* @NL_LAST_PACKET, align 4
  %122 = bitcast %union.nl_packet* %8 to %struct.TYPE_2__*
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %83
  %127 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %128 = bitcast %union.nl_packet* %8 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = load i16, i16* %7, align 2
  %131 = zext i16 %130 to i32
  %132 = load i16, i16* %5, align 2
  %133 = zext i16 %132 to i32
  %134 = add nsw i32 %131, %133
  %135 = trunc i32 %134 to i16
  %136 = call i32 @do_send_fragment(%struct.ipw_hardware* %127, i64 %129, i16 zeroext %135)
  %137 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %138 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %137, i32 0, i32 1
  %139 = load i16, i16* %138, align 4
  %140 = zext i16 %139 to i32
  %141 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %142 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %126
  %146 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %147 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %146, i32 0, i32 1
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %151 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %150, i32 0, i32 5
  %152 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %153 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = call i32 @list_add(i32* %151, i32* %155)
  %157 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %158 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %162 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %161, i32 0, i32 1
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  br label %184

165:                                              ; preds = %126
  %166 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %167 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %166, i32 0, i32 4
  %168 = load i32 (i32, i32)*, i32 (i32, i32)** %167, align 8
  %169 = icmp ne i32 (i32, i32)* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %172 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %171, i32 0, i32 4
  %173 = load i32 (i32, i32)*, i32 (i32, i32)** %172, align 8
  %174 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %175 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %178 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %173(i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %170, %165
  %182 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %4, align 8
  %183 = call i32 @kfree(%struct.ipw_tx_packet* %182)
  br label %184

184:                                              ; preds = %181, %145
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i16 zeroext) #1

declare dso_local i32 @do_send_fragment(%struct.ipw_hardware*, i64, i16 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ipw_tx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
