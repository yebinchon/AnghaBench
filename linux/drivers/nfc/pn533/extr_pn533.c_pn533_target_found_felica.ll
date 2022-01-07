; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_target_found_felica.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_target_found_felica.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_target = type { i32, i32, i32, i32, i32 }
%struct.pn533_target_felica = type { i64*, i64 }

@EPROTO = common dso_local global i32 0, align 4
@PN533_FELICA_SENSF_NFCID2_DEP_B1 = common dso_local global i64 0, align 8
@PN533_FELICA_SENSF_NFCID2_DEP_B2 = common dso_local global i64 0, align 8
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_NFCID2_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_target*, i32*, i32)* @pn533_target_found_felica to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_target_found_felica(%struct.nfc_target* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_target*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pn533_target_felica*, align 8
  store %struct.nfc_target* %0, %struct.nfc_target** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = bitcast i32* %9 to %struct.pn533_target_felica*
  store %struct.pn533_target_felica* %10, %struct.pn533_target_felica** %8, align 8
  %11 = load %struct.pn533_target_felica*, %struct.pn533_target_felica** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @pn533_target_felica_is_valid(%struct.pn533_target_felica* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EPROTO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.pn533_target_felica*, %struct.pn533_target_felica** %8, align 8
  %20 = getelementptr inbounds %struct.pn533_target_felica, %struct.pn533_target_felica* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PN533_FELICA_SENSF_NFCID2_DEP_B1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.pn533_target_felica*, %struct.pn533_target_felica** %8, align 8
  %28 = getelementptr inbounds %struct.pn533_target_felica, %struct.pn533_target_felica* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PN533_FELICA_SENSF_NFCID2_DEP_B2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %36 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %37 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  br label %42

38:                                               ; preds = %26, %18
  %39 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %40 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %41 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %44 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pn533_target_felica*, %struct.pn533_target_felica** %8, align 8
  %47 = getelementptr inbounds %struct.pn533_target_felica, %struct.pn533_target_felica* %46, i32 0, i32 1
  %48 = call i32 @memcpy(i32 %45, i64* %47, i32 9)
  %49 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %50 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %49, i32 0, i32 0
  store i32 9, i32* %50, align 4
  %51 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %52 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pn533_target_felica*, %struct.pn533_target_felica** %8, align 8
  %55 = getelementptr inbounds %struct.pn533_target_felica, %struct.pn533_target_felica* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* @NFC_NFCID2_MAXSIZE, align 4
  %58 = call i32 @memcpy(i32 %53, i64* %56, i32 %57)
  %59 = load i32, i32* @NFC_NFCID2_MAXSIZE, align 4
  %60 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %61 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %42, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @pn533_target_felica_is_valid(%struct.pn533_target_felica*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
