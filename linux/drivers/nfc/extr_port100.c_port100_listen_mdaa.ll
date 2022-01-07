; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_listen_mdaa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_listen_mdaa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.digital_tg_mdaa_params = type { i32, i32, i32, i32, i32 }
%struct.port100 = type { i32 }
%struct.port100_tg_comm_rf_cmd = type { i32, i32*, i32*, i8*, i8*, i64 }
%struct.port100_cb_arg = type { i32, i8*, i32 }
%struct.sk_buff = type { i64 }

@NFC_DIGITAL_CONFIG_RF_TECH = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_106A = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_NFC_DEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT100_CMD_TG_COMM_RF = common dso_local global i32 0, align 4
@port100_tg_comm_rf_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.digital_tg_mdaa_params*, i32, i32, i8*)* @port100_listen_mdaa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_listen_mdaa(%struct.nfc_digital_dev* %0, %struct.digital_tg_mdaa_params* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_digital_dev*, align 8
  %8 = alloca %struct.digital_tg_mdaa_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.port100*, align 8
  %13 = alloca %struct.port100_tg_comm_rf_cmd*, align 8
  %14 = alloca %struct.port100_cb_arg*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %7, align 8
  store %struct.digital_tg_mdaa_params* %1, %struct.digital_tg_mdaa_params** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %18 = call %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %17)
  store %struct.port100* %18, %struct.port100** %12, align 8
  %19 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %20 = load i32, i32* @NFC_DIGITAL_CONFIG_RF_TECH, align 4
  %21 = load i32, i32* @NFC_DIGITAL_RF_TECH_106A, align 4
  %22 = call i32 @port100_tg_configure_hw(%struct.nfc_digital_dev* %19, i32 %20, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %6, align 4
  br label %144

27:                                               ; preds = %5
  %28 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %29 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %30 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_NFC_DEP, align 4
  %31 = call i32 @port100_tg_configure_hw(%struct.nfc_digital_dev* %28, i32 %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %6, align 4
  br label %144

36:                                               ; preds = %27
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.port100_cb_arg* @kzalloc(i32 24, i32 %37)
  store %struct.port100_cb_arg* %38, %struct.port100_cb_arg** %14, align 8
  %39 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %40 = icmp ne %struct.port100_cb_arg* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %144

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %47 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %50 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %52 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.port100*, %struct.port100** %12, align 8
  %54 = call %struct.sk_buff* @port100_alloc_skb(%struct.port100* %53, i32 0)
  store %struct.sk_buff* %54, %struct.sk_buff** %15, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %44
  %58 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %59 = call i32 @kfree(%struct.port100_cb_arg* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %144

62:                                               ; preds = %44
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = call i32 @skb_push(%struct.sk_buff* %63, i32 48)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.port100_tg_comm_rf_cmd*
  store %struct.port100_tg_comm_rf_cmd* %68, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %69 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %70 = call i32 @memset(%struct.port100_tg_comm_rf_cmd* %69, i32 0, i32 48)
  %71 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %72 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = call i8* @cpu_to_le16(i32 65535)
  %74 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %75 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %77 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %79 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %84 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %82, i32* %86, align 4
  %87 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %88 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 255
  %91 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %92 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %90, i32* %94, align 4
  %95 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %96 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %100 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32* %98, i32 %101, i32 3)
  %103 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %104 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %107 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  store i32 %105, i32* %109, align 4
  %110 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %111 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %114 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memcpy(i32* %112, i32 %115, i32 8)
  %117 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %118 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 8
  %121 = and i32 %120, 255
  %122 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %123 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 16
  store i32 %121, i32* %125, align 4
  %126 = load %struct.digital_tg_mdaa_params*, %struct.digital_tg_mdaa_params** %8, align 8
  %127 = getelementptr inbounds %struct.digital_tg_mdaa_params, %struct.digital_tg_mdaa_params* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 255
  %130 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %131 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 17
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %137 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.port100*, %struct.port100** %12, align 8
  %139 = load i32, i32* @PORT100_CMD_TG_COMM_RF, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %141 = load i32, i32* @port100_tg_comm_rf_complete, align 4
  %142 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %143 = call i32 @port100_send_cmd_async(%struct.port100* %138, i32 %139, %struct.sk_buff* %140, i32 %141, %struct.port100_cb_arg* %142)
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %62, %57, %41, %34, %25
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local i32 @port100_tg_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local %struct.port100_cb_arg* @kzalloc(i32, i32) #1

declare dso_local %struct.sk_buff* @port100_alloc_skb(%struct.port100*, i32) #1

declare dso_local i32 @kfree(%struct.port100_cb_arg*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.port100_tg_comm_rf_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @port100_send_cmd_async(%struct.port100*, i32, %struct.sk_buff*, i32, %struct.port100_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
