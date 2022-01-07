; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_descmiss_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_descmiss_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, i32 }
%struct.usb_request = type { i32, i32, i64, i32 }
%struct.cdns3_request = type { i32, i32, %struct.usb_request }

@REQUEST_PENDING = common dso_local global i32 0, align 4
@REQUEST_INTERNAL_CH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_endpoint*, %struct.usb_request*)* @cdns3_wa2_descmiss_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_wa2_descmiss_copy_data(%struct.cdns3_endpoint* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.cdns3_endpoint*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca %struct.cdns3_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  br label %9

9:                                                ; preds = %96, %2
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 2
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %97

15:                                               ; preds = %9
  %16 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %17 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %16, i32 0, i32 2
  %18 = call %struct.cdns3_request* @cdns3_next_priv_request(i32* %17)
  store %struct.cdns3_request* %18, %struct.cdns3_request** %6, align 8
  %19 = load %struct.cdns3_request*, %struct.cdns3_request** %6, align 8
  %20 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %19, i32 0, i32 2
  store %struct.usb_request* %20, %struct.usb_request** %5, align 8
  %21 = load %struct.cdns3_request*, %struct.cdns3_request** %6, align 8
  %22 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @REQUEST_PENDING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %97

28:                                               ; preds = %15
  %29 = load %struct.cdns3_request*, %struct.cdns3_request** %6, align 8
  %30 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @REQUEST_INTERNAL_CH, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %38 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %42 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %45 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %28
  %52 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %53 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %57 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %62 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = call i32 @memcpy(i32* %60, i64 %63, i64 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %71 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %77

72:                                               ; preds = %28
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %76 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %51
  %78 = load %struct.cdns3_request*, %struct.cdns3_request** %6, align 8
  %79 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %78, i32 0, i32 1
  %80 = call i32 @list_del_init(i32* %79)
  %81 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %82 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @kfree(i64 %83)
  %85 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %86 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %85, i32 0, i32 1
  %87 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %88 = call i32 @cdns3_gadget_ep_free_request(i32* %86, %struct.usb_request* %87)
  %89 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %90 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %77
  br label %97

96:                                               ; preds = %77
  br label %9

97:                                               ; preds = %95, %27, %9
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.cdns3_request* @cdns3_next_priv_request(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @cdns3_gadget_ep_free_request(i32*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
