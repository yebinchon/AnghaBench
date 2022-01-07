; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_submit_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_submit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_usb_transaction = type { i32, i32, i32, i32, i32, i32, %struct.urb*, %struct.cvmx_usb_iso_packet*, i8*, i8* }
%struct.octeon_hcd = type { i32* }
%struct.cvmx_usb_pipe = type { i32, i32, i32 }
%struct.cvmx_usb_iso_packet = type { i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i64 0, align 8
@CVMX_USB_STAGE_SETUP = common dso_local global i32 0, align 4
@CVMX_USB_STAGE_NON_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_usb_transaction* (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, i32, i8*, i32, i8*, i32, i32, %struct.cvmx_usb_iso_packet*, %struct.urb*)* @cvmx_usb_submit_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_usb_transaction* @cvmx_usb_submit_transaction(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, %struct.cvmx_usb_iso_packet* %8, %struct.urb* %9) #0 {
  %11 = alloca %struct.cvmx_usb_transaction*, align 8
  %12 = alloca %struct.octeon_hcd*, align 8
  %13 = alloca %struct.cvmx_usb_pipe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cvmx_usb_iso_packet*, align 8
  %21 = alloca %struct.urb*, align 8
  %22 = alloca %struct.cvmx_usb_transaction*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %12, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.cvmx_usb_iso_packet* %8, %struct.cvmx_usb_iso_packet** %20, align 8
  store %struct.urb* %9, %struct.urb** %21, align 8
  %23 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %13, align 8
  %24 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %10
  store %struct.cvmx_usb_transaction* null, %struct.cvmx_usb_transaction** %11, align 8
  br label %113

32:                                               ; preds = %10
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.cvmx_usb_transaction* @kzalloc(i32 56, i32 %33)
  store %struct.cvmx_usb_transaction* %34, %struct.cvmx_usb_transaction** %22, align 8
  %35 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %36 = icmp ne %struct.cvmx_usb_transaction* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store %struct.cvmx_usb_transaction* null, %struct.cvmx_usb_transaction** %11, align 8
  br label %113

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %45 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %48 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %51 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %54 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %57 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %60 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cvmx_usb_iso_packet*, %struct.cvmx_usb_iso_packet** %20, align 8
  %62 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %63 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %62, i32 0, i32 7
  store %struct.cvmx_usb_iso_packet* %61, %struct.cvmx_usb_iso_packet** %63, align 8
  %64 = load %struct.urb*, %struct.urb** %21, align 8
  %65 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %66 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %65, i32 0, i32 6
  store %struct.urb* %64, %struct.urb** %66, align 8
  %67 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %68 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @CVMX_USB_TRANSFER_CONTROL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %42
  %74 = load i32, i32* @CVMX_USB_STAGE_SETUP, align 4
  %75 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %76 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %42
  %78 = load i32, i32* @CVMX_USB_STAGE_NON_CONTROL, align 4
  %79 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %80 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %13, align 8
  %83 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %82, i32 0, i32 2
  %84 = call i32 @list_empty(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %88 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %87, i32 0, i32 4
  %89 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %13, align 8
  %90 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %89, i32 0, i32 2
  %91 = call i32 @list_add_tail(i32* %88, i32* %90)
  br label %111

92:                                               ; preds = %81
  %93 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  %94 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %93, i32 0, i32 4
  %95 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %13, align 8
  %96 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %95, i32 0, i32 2
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  %98 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %13, align 8
  %99 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %98, i32 0, i32 1
  %100 = load %struct.octeon_hcd*, %struct.octeon_hcd** %12, align 8
  %101 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %13, align 8
  %104 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = call i32 @list_move_tail(i32* %99, i32* %107)
  %109 = load %struct.octeon_hcd*, %struct.octeon_hcd** %12, align 8
  %110 = call i32 @cvmx_usb_schedule(%struct.octeon_hcd* %109, i32 0)
  br label %111

111:                                              ; preds = %92, %86
  %112 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %22, align 8
  store %struct.cvmx_usb_transaction* %112, %struct.cvmx_usb_transaction** %11, align 8
  br label %113

113:                                              ; preds = %111, %41, %31
  %114 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %11, align 8
  ret %struct.cvmx_usb_transaction* %114
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.cvmx_usb_transaction* @kzalloc(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @cvmx_usb_schedule(%struct.octeon_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
