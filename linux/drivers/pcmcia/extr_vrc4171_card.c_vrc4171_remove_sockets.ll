; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_vrc4171_remove_sockets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_vrc4171_remove_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrc4171_socket = type { i64, i32 }

@CARD_MAX_SLOTS = common dso_local global i32 0, align 4
@CARD_SLOTB = common dso_local global i32 0, align 4
@vrc4171_slotb = common dso_local global i64 0, align 8
@SLOTB_IS_NONE = common dso_local global i64 0, align 8
@vrc4171_sockets = common dso_local global %struct.vrc4171_socket* null, align 8
@SLOT_INITIALIZED = common dso_local global i64 0, align 8
@SLOT_PROBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vrc4171_remove_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vrc4171_remove_sockets() #0 {
  %1 = alloca %struct.vrc4171_socket*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %34, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CARD_MAX_SLOTS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @CARD_SLOTB, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i64, i64* @vrc4171_slotb, align 8
  %13 = load i64, i64* @SLOTB_IS_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %34

16:                                               ; preds = %11, %7
  %17 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** @vrc4171_sockets, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %17, i64 %19
  store %struct.vrc4171_socket* %20, %struct.vrc4171_socket** %1, align 8
  %21 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %1, align 8
  %22 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SLOT_INITIALIZED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %1, align 8
  %28 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %27, i32 0, i32 1
  %29 = call i32 @pcmcia_unregister_socket(i32* %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load i64, i64* @SLOT_PROBE, align 8
  %32 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %1, align 8
  %33 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %3

37:                                               ; preds = %3
  ret void
}

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
