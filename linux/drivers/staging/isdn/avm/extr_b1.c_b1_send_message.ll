; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1.c_b1_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1.c_b1_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { i64 }
%struct.sk_buff = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@CAPI_DATA_B3_REQ = common dso_local global i64 0, align 8
@CAPI_NOERROR = common dso_local global i64 0, align 8
@SEND_DATA_B3_REQ = common dso_local global i32 0, align 4
@SEND_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @b1_send_message(%struct.capi_ctr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.capi_ctr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.capi_ctr* %0, %struct.capi_ctr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %16 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @CAPIMSG_LEN(i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @CAPIMSG_COMMAND(i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @CAPIMSG_SUBCOMMAND(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @CAPICMD(i32 %41, i32 %42)
  %44 = load i64, i64* @CAPI_DATA_B3_REQ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @CAPIMSG_APPID(i64 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @CAPIMSG_NCCI(i64 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @CAPIMSG_MSGID(i64 %59)
  %61 = call i64 @capilib_data_b3_req(i32* %48, i32 %52, i32 %56, i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @CAPI_NOERROR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i64, i64* %14, align 8
  store i64 %70, i64* %3, align 8
  br label %111

71:                                               ; preds = %46
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @CAPIMSG_DATALEN(i64 %74)
  store i64 %75, i64* %13, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @SEND_DATA_B3_REQ, align 4
  %78 = call i32 @b1_put_byte(i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @b1_put_slice(i32 %79, i64 %82, i64 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @b1_put_slice(i32 %85, i64 %90, i64 %91)
  br label %103

93:                                               ; preds = %2
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @SEND_MESSAGE, align 4
  %96 = call i32 @b1_put_byte(i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @b1_put_slice(i32 %97, i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %93, %71
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %108)
  %110 = load i64, i64* @CAPI_NOERROR, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %103, %65
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i64 @CAPIMSG_LEN(i64) #1

declare dso_local i32 @CAPIMSG_COMMAND(i64) #1

declare dso_local i32 @CAPIMSG_SUBCOMMAND(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @CAPICMD(i32, i32) #1

declare dso_local i64 @capilib_data_b3_req(i32*, i32, i32, i32) #1

declare dso_local i32 @CAPIMSG_APPID(i64) #1

declare dso_local i32 @CAPIMSG_NCCI(i64) #1

declare dso_local i32 @CAPIMSG_MSGID(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @CAPIMSG_DATALEN(i64) #1

declare dso_local i32 @b1_put_byte(i32, i32) #1

declare dso_local i32 @b1_put_slice(i32, i64, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
