; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_in_set_framing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_in_set_framing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100_protocol = type { i64 }
%struct.nfc_digital_dev = type { i32 }
%struct.port100 = type { i32 }
%struct.sk_buff = type { i32* }

@NFC_DIGITAL_FRAMING_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@in_protocols = common dso_local global %struct.port100_protocol** null, align 8
@PORT100_IN_PROT_END = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PORT100_CMD_IN_SET_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, i32)* @port100_in_set_framing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_in_set_framing(%struct.nfc_digital_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port100*, align 8
  %7 = alloca %struct.port100_protocol*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %14 = call %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %13)
  store %struct.port100* %14, %struct.port100** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NFC_DIGITAL_FRAMING_LAST, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.port100_protocol**, %struct.port100_protocol*** @in_protocols, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.port100_protocol*, %struct.port100_protocol** %22, i64 %24
  %26 = load %struct.port100_protocol*, %struct.port100_protocol** %25, align 8
  store %struct.port100_protocol* %26, %struct.port100_protocol** %7, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %36, %21
  %28 = load %struct.port100_protocol*, %struct.port100_protocol** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.port100_protocol, %struct.port100_protocol* %28, i64 %30
  %32 = getelementptr inbounds %struct.port100_protocol, %struct.port100_protocol* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PORT100_IN_PROT_END, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %79

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  store i64 %46, i64* %11, align 8
  %47 = load %struct.port100*, %struct.port100** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call %struct.sk_buff* @port100_alloc_skb(%struct.port100* %47, i64 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load %struct.port100_protocol*, %struct.port100_protocol** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @skb_put_data(%struct.sk_buff* %56, %struct.port100_protocol* %57, i64 %58)
  %60 = load %struct.port100*, %struct.port100** %6, align 8
  %61 = load i32, i32* @PORT100_CMD_IN_SET_PROTOCOL, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call %struct.sk_buff* @port100_send_cmd_sync(%struct.port100* %60, i32 %61, %struct.sk_buff* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %9, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = call i64 @IS_ERR(%struct.sk_buff* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = call i32 @PTR_ERR(%struct.sk_buff* %68)
  store i32 %69, i32* %3, align 4
  br label %79

70:                                               ; preds = %55
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = call i32 @dev_kfree_skb(%struct.sk_buff* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %67, %52, %42, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local %struct.sk_buff* @port100_alloc_skb(%struct.port100*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.port100_protocol*, i64) #1

declare dso_local %struct.sk_buff* @port100_send_cmd_sync(%struct.port100*, i32, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
