; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_read_cardpda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_read_cardpda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pda = type { i32 }
%struct.wlandevice = type { i32 }
%struct.p80211msg_p2req_readpda = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIDMSG_P2REQ_READPDA = common dso_local global i32 0, align 4
@DIDMSG_P2REQ_READPDA_PDA = common dso_local global i32 0, align 4
@HFA384x_PDA_LEN_MAX = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_no_value = common dso_local global i8* null, align 8
@DIDMSG_P2REQ_READPDA_RESULTCODE = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_success = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pda*, %struct.wlandevice*)* @read_cardpda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cardpda(%struct.pda* %0, %struct.wlandevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pda*, align 8
  %5 = alloca %struct.wlandevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p80211msg_p2req_readpda*, align 8
  store %struct.pda* %0, %struct.pda** %4, align 8
  store %struct.wlandevice* %1, %struct.wlandevice** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.p80211msg_p2req_readpda* @kzalloc(i32 72, i32 %8)
  store %struct.p80211msg_p2req_readpda* %9, %struct.p80211msg_p2req_readpda** %7, align 8
  %10 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %11 = icmp ne %struct.p80211msg_p2req_readpda* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  %16 = load i32, i32* @DIDMSG_P2REQ_READPDA, align 4
  %17 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %18 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %20 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %19, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %22 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %25 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %23, i32 %26)
  %28 = load i32, i32* @DIDMSG_P2REQ_READPDA_PDA, align 4
  %29 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %30 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @HFA384x_PDA_LEN_MAX, align 4
  %33 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %34 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** @P80211ENUM_msgitem_status_no_value, align 8
  %37 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %38 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @DIDMSG_P2REQ_READPDA_RESULTCODE, align 4
  %41 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %42 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %45 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load i8*, i8** @P80211ENUM_msgitem_status_no_value, align 8
  %48 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %49 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %52 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %53 = call i64 @prism2mgmt_readpda(%struct.wlandevice* %51, %struct.p80211msg_p2req_readpda* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %15
  store i32 -1, i32* %6, align 4
  br label %77

56:                                               ; preds = %15
  %57 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %58 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @P80211ENUM_resultcode_success, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.pda*, %struct.pda** %4, align 8
  %65 = getelementptr inbounds %struct.pda, %struct.pda* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %68 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @HFA384x_PDA_LEN_MAX, align 4
  %72 = call i32 @memcpy(i32 %66, i32 %70, i32 %71)
  %73 = load %struct.pda*, %struct.pda** %4, align 8
  %74 = call i32 @mkpdrlist(%struct.pda* %73)
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %79 = call i32 @kfree(%struct.p80211msg_p2req_readpda* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %12
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.p80211msg_p2req_readpda* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @prism2mgmt_readpda(%struct.wlandevice*, %struct.p80211msg_p2req_readpda*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mkpdrlist(%struct.pda*) #1

declare dso_local i32 @kfree(%struct.p80211msg_p2req_readpda*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
