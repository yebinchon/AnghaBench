; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i64, %struct.pn533_usb_phy* }
%struct.pn533_usb_phy = type { %struct.TYPE_3__*, %struct.pn533* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"PN533 TX: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PN533_PROTO_REQ_RESP = common dso_local global i64 0, align 8
@PN533_PROTO_REQ_ACK_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, %struct.sk_buff*)* @pn533_usb_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_usb_send_frame(%struct.pn533* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pn533_usb_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.pn533*, %struct.pn533** %4, align 8
  %9 = getelementptr inbounds %struct.pn533, %struct.pn533* %8, i32 0, i32 1
  %10 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %9, align 8
  store %struct.pn533_usb_phy* %10, %struct.pn533_usb_phy** %6, align 8
  %11 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %12 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %11, i32 0, i32 1
  %13 = load %struct.pn533*, %struct.pn533** %12, align 8
  %14 = icmp eq %struct.pn533* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.pn533*, %struct.pn533** %4, align 8
  %17 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %18 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %17, i32 0, i32 1
  store %struct.pn533* %16, %struct.pn533** %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %24 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %31 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %34, i32 16, i32 1, i32 %37, i32 %40, i32 0)
  %42 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %43 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @usb_submit_urb(%struct.TYPE_3__* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %19
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %19
  %52 = load %struct.pn533*, %struct.pn533** %4, align 8
  %53 = getelementptr inbounds %struct.pn533, %struct.pn533* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PN533_PROTO_REQ_RESP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @pn533_submit_urb_for_response(%struct.pn533_usb_phy* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %81

64:                                               ; preds = %57
  br label %80

65:                                               ; preds = %51
  %66 = load %struct.pn533*, %struct.pn533** %4, align 8
  %67 = getelementptr inbounds %struct.pn533, %struct.pn533* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PN533_PROTO_REQ_ACK_RESP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @pn533_submit_urb_for_ack(%struct.pn533_usb_phy* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %81

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %64
  store i32 0, i32* %3, align 4
  br label %87

81:                                               ; preds = %77, %63
  %82 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %83 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = call i32 @usb_unlink_urb(%struct.TYPE_3__* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %80, %49
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pn533_submit_urb_for_response(%struct.pn533_usb_phy*, i32) #1

declare dso_local i32 @pn533_submit_urb_for_ack(%struct.pn533_usb_phy*, i32) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
