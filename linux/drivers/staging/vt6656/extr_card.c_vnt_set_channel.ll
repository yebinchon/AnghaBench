; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@CB_MAX_CHANNEL = common dso_local global i32 0, align 4
@MAC_REG_MACCR = common dso_local global i32 0, align 4
@MACCR_CLRNAV = common dso_local global i32 0, align 4
@MAC_REG_CHANNEL = common dso_local global i32 0, align 4
@MESSAGE_TYPE_SELECT_CHANNEL = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_set_channel(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  br label %30

12:                                               ; preds = %8
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = load i32, i32* @MAC_REG_MACCR, align 4
  %15 = load i32, i32* @MACCR_CLRNAV, align 4
  %16 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %13, i32 %14, i32 %15)
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = load i32, i32* @MAC_REG_CHANNEL, align 4
  %19 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %17, i32 %18, i32 176)
  %20 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %21 = load i32, i32* @MESSAGE_TYPE_SELECT_CHANNEL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @vnt_control_out(%struct.vnt_private* %20, i32 %21, i32 %22, i32 0, i32 0, i32* null)
  %24 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %25 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %26 = load i32, i32* @MAC_REG_CHANNEL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 128
  %29 = call i32 @vnt_control_out_u8(%struct.vnt_private* %24, i32 %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vnt_control_out_u8(%struct.vnt_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
