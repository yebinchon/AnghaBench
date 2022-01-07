; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_poll_create_mod_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_poll_create_mod_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32 }

@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@PN533_POLL_MOD_106KBPS_A = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@PN533_POLL_MOD_212KBPS_FELICA = common dso_local global i32 0, align 4
@PN533_POLL_MOD_424KBPS_FELICA = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@PN533_POLL_MOD_106KBPS_JEWEL = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@PN533_POLL_MOD_847KBPS_B = common dso_local global i32 0, align 4
@PN533_LISTEN_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pn533*, i32, i32)* @pn533_poll_create_mod_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_poll_create_mod_list(%struct.pn533* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pn533*, %struct.pn533** %4, align 8
  %8 = call i32 @pn533_poll_reset_mod_list(%struct.pn533* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %13, %3
  %24 = load %struct.pn533*, %struct.pn533** %4, align 8
  %25 = load i32, i32* @PN533_POLL_MOD_106KBPS_A, align 4
  %26 = call i32 @pn533_poll_add_mod(%struct.pn533* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %27
  %38 = load %struct.pn533*, %struct.pn533** %4, align 8
  %39 = load i32, i32* @PN533_POLL_MOD_212KBPS_FELICA, align 4
  %40 = call i32 @pn533_poll_add_mod(%struct.pn533* %38, i32 %39)
  %41 = load %struct.pn533*, %struct.pn533** %4, align 8
  %42 = load i32, i32* @PN533_POLL_MOD_424KBPS_FELICA, align 4
  %43 = call i32 @pn533_poll_add_mod(%struct.pn533* %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.pn533*, %struct.pn533** %4, align 8
  %51 = load i32, i32* @PN533_POLL_MOD_106KBPS_JEWEL, align 4
  %52 = call i32 @pn533_poll_add_mod(%struct.pn533* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.pn533*, %struct.pn533** %4, align 8
  %60 = load i32, i32* @PN533_POLL_MOD_847KBPS_B, align 4
  %61 = call i32 @pn533_poll_add_mod(%struct.pn533* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.pn533*, %struct.pn533** %4, align 8
  %67 = load i32, i32* @PN533_LISTEN_MOD, align 4
  %68 = call i32 @pn533_poll_add_mod(%struct.pn533* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  ret void
}

declare dso_local i32 @pn533_poll_reset_mod_list(%struct.pn533*) #1

declare dso_local i32 @pn533_poll_add_mod(%struct.pn533*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
