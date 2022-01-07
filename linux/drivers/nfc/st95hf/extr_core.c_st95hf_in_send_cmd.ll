; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_in_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_in_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i64 }
%struct.sk_buff = type { i32, i32* }
%struct.st95hf_context = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, %struct.sk_buff* }

@MAX_RESPONSE_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ST95HF_COMMAND_SEND = common dso_local global i32 0, align 4
@SEND_RECEIVE_CMD = common dso_local global i32 0, align 4
@ISO14443A_RATS_REQ = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Semaphore is not found up in st95hf_in_send_cmd\0A\00", align 1
@ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error %d trying to perform data_exchange\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i8*)* @st95hf_in_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_in_send_cmd(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_digital_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.st95hf_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %17 = call %struct.st95hf_context* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %16)
  store %struct.st95hf_context* %17, %struct.st95hf_context** %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @MAX_RESPONSE_BUFFER_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @nfc_alloc_recv_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %13, align 4
  br label %133

26:                                               ; preds = %5
  %27 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %28 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %44 [
    i32 130, label %30
    i32 129, label %40
    i32 128, label %40
  ]

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %37 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @skb_put_u8(%struct.sk_buff* %35, i32 %38)
  br label %47

40:                                               ; preds = %26, %26
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  br label %47

44:                                               ; preds = %26
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %130

47:                                               ; preds = %40, %30
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @skb_push(%struct.sk_buff* %48, i32 3)
  %50 = load i32, i32* @ST95HF_COMMAND_SEND, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @SEND_RECEIVE_CMD, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %66 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %67 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store %struct.sk_buff* %65, %struct.sk_buff** %68, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %71 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %75 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ISO14443A_RATS_REQ, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %47
  %85 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %86 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NFC_PROTO_ISO14443, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %92 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %84, %47
  %95 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %96 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %95, i32 0, i32 1
  %97 = call i32 @down_killable(i32* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %135

103:                                              ; preds = %94
  %104 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %105 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %104, i32 0, i32 3
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ASYNC, align 4
  %113 = call i32 @st95hf_spi_send(i32* %105, i32* %108, i32 %111, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %103
  %117 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %118 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load %struct.st95hf_context*, %struct.st95hf_context** %12, align 8
  %124 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %123, i32 0, i32 1
  %125 = call i32 @up(i32* %124)
  br label %130

126:                                              ; preds = %103
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %6, align 4
  br label %135

130:                                              ; preds = %116, %44
  %131 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %132 = call i32 @kfree_skb(%struct.sk_buff* %131)
  br label %133

133:                                              ; preds = %130, %23
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %126, %100
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local %struct.st95hf_context* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local %struct.sk_buff* @nfc_alloc_recv_skb(i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @down_killable(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @st95hf_spi_send(i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
