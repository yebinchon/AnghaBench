; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_vrc4171_add_sockets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_vrc4171_add_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrc4171_socket = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@CARD_MAX_SLOTS = common dso_local global i32 0, align 4
@CARD_SLOTB = common dso_local global i32 0, align 4
@vrc4171_slotb = common dso_local global i64 0, align 8
@SLOTB_IS_NONE = common dso_local global i64 0, align 8
@vrc4171_sockets = common dso_local global %struct.vrc4171_socket* null, align 8
@SLOT_PROBE = common dso_local global i32 0, align 4
@I365_ADDRWIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NEC VRC4171 Card Slot %1c\00", align 1
@vrc4171_card_device = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@vrc4171_pccard_operations = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GLOBAL_CONTROL = common dso_local global i32 0, align 4
@SLOT_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vrc4171_add_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrc4171_add_sockets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vrc4171_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %93, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CARD_MAX_SLOTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %96

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CARD_SLOTB, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i64, i64* @vrc4171_slotb, align 8
  %16 = load i64, i64* @SLOTB_IS_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %93

19:                                               ; preds = %14, %10
  %20 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** @vrc4171_sockets, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %20, i64 %22
  store %struct.vrc4171_socket* %23, %struct.vrc4171_socket** %2, align 8
  %24 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %25 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SLOT_PROBE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %19
  %30 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %31 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %53 [
    i32 128, label %33
    i32 129, label %43
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @I365_ADDRWIN, align 4
  %36 = call i32 @exca_read_byte(i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @I365_ADDRWIN, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @exca_write_byte(i32 %39, i32 %40, i32 %41)
  br label %54

43:                                               ; preds = %29
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @I365_ADDRWIN, align 4
  %46 = call i32 @exca_read_byte(i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 192
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @I365_ADDRWIN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @exca_write_byte(i32 %49, i32 %50, i32 %51)
  br label %54

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %43, %33
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @reserve_using_irq(i32 %55)
  br label %93

57:                                               ; preds = %19
  %58 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %59 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 65, %61
  %63 = trunc i32 %62 to i8
  %64 = call i32 @sprintf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 signext %63)
  %65 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %66 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vrc4171_card_device, i32 0, i32 0), i32** %68, align 8
  %69 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %70 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32* @vrc4171_pccard_operations, i32** %71, align 8
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %74 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %77 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %76, i32 0, i32 1
  %78 = call i32 @pcmcia_register_socket(%struct.TYPE_6__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %57
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %1, align 4
  br label %97

83:                                               ; preds = %57
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @I365_ADDRWIN, align 4
  %86 = call i32 @exca_write_byte(i32 %84, i32 %85, i32 0)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @GLOBAL_CONTROL, align 4
  %89 = call i32 @exca_write_byte(i32 %87, i32 %88, i32 0)
  %90 = load i32, i32* @SLOT_INITIALIZED, align 4
  %91 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %2, align 8
  %92 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %83, %54, %18
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %6

96:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %97

97:                                               ; preds = %96, %81
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i32 @exca_read_byte(i32, i32) #1

declare dso_local i32 @exca_write_byte(i32, i32, i32) #1

declare dso_local i32 @reserve_using_irq(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8 signext) #1

declare dso_local i32 @pcmcia_register_socket(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
