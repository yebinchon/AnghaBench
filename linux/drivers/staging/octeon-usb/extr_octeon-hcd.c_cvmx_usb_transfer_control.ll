; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i32, i32 }
%struct.cvmx_usb_transaction = type { i32, i32, i32 }
%union.cvmx_usbcx_hccharx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@CVMX_USB_STATUS_ERROR = common dso_local global i32 0, align 4
@CVMX_USB_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i32, i32, i32)* @cvmx_usb_transfer_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_transfer_control(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_transaction* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %union.cvmx_usbcx_hccharx, align 4
  %8 = alloca %struct.octeon_hcd*, align 8
  %9 = alloca %struct.cvmx_usb_pipe*, align 8
  %10 = alloca %struct.cvmx_usb_transaction*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_ctrlrequest*, align 8
  %14 = alloca %struct.usb_ctrlrequest*, align 8
  %15 = getelementptr inbounds %union.cvmx_usbcx_hccharx, %union.cvmx_usbcx_hccharx* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %8, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %9, align 8
  store %struct.cvmx_usb_transaction* %2, %struct.cvmx_usb_transaction** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %18 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %158 [
    i32 133, label %20
    i32 132, label %20
    i32 131, label %26
    i32 130, label %53
    i32 135, label %69
    i32 134, label %119
    i32 129, label %137
    i32 128, label %152
  ]

20:                                               ; preds = %6, %6
  %21 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %22 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %23 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %24 = load i32, i32* @CVMX_USB_STATUS_ERROR, align 4
  %25 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %21, %struct.cvmx_usb_pipe* %22, %struct.cvmx_usb_transaction* %23, i32 %24)
  br label %158

26:                                               ; preds = %6
  %27 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %28 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %30 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %31 = call i32 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %29, %struct.cvmx_usb_pipe* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %35 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %34, i32 0, i32 0
  store i32 130, i32* %35, align 4
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %38 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.usb_ctrlrequest* @cvmx_phys_to_ptr(i32 %39)
  store %struct.usb_ctrlrequest* %40, %struct.usb_ctrlrequest** %13, align 8
  %41 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %47 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %46, i32 0, i32 0
  store i32 135, i32* %47, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %50 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %49, i32 0, i32 0
  store i32 129, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %33
  br label %158

53:                                               ; preds = %6
  %54 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %55 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.usb_ctrlrequest* @cvmx_phys_to_ptr(i32 %56)
  store %struct.usb_ctrlrequest* %57, %struct.usb_ctrlrequest** %14, align 8
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %14, align 8
  %59 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %64 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %63, i32 0, i32 0
  store i32 135, i32* %64, align 4
  br label %68

65:                                               ; preds = %53
  %66 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %67 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %66, i32 0, i32 0
  store i32 129, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %158

69:                                               ; preds = %6
  %70 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %71 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %72 = call i32 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %70, %struct.cvmx_usb_pipe* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %76 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %75, i32 0, i32 0
  store i32 134, i32* %76, align 4
  %77 = bitcast %union.cvmx_usbcx_hccharx* %7 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %84 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %90 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %101

93:                                               ; preds = %81
  %94 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %95 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %98 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %93, %87
  br label %102

102:                                              ; preds = %101, %74
  br label %118

103:                                              ; preds = %69
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %109 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106, %103
  %113 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %114 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  %115 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %116 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %115, i32 0, i32 0
  store i32 129, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %102
  br label %158

119:                                              ; preds = %6
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %125 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122, %119
  %129 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %130 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %129, i32 0, i32 0
  store i32 1, i32* %130, align 4
  %131 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %132 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %131, i32 0, i32 0
  store i32 129, i32* %132, align 4
  br label %136

133:                                              ; preds = %122
  %134 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %135 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %134, i32 0, i32 0
  store i32 135, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %128
  br label %158

137:                                              ; preds = %6
  %138 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %139 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %140 = call i32 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %138, %struct.cvmx_usb_pipe* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %144 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %143, i32 0, i32 0
  store i32 128, i32* %144, align 4
  br label %151

145:                                              ; preds = %137
  %146 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %147 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %148 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %149 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %150 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %146, %struct.cvmx_usb_pipe* %147, %struct.cvmx_usb_transaction* %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %142
  br label %158

152:                                              ; preds = %6
  %153 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %154 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %155 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %156 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %157 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %153, %struct.cvmx_usb_pipe* %154, %struct.cvmx_usb_transaction* %155, i32 %156)
  br label %158

158:                                              ; preds = %6, %152, %151, %136, %118, %68, %52, %20
  ret void
}

declare dso_local i32 @cvmx_usb_complete(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i32) #1

declare dso_local i32 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*) #1

declare dso_local %struct.usb_ctrlrequest* @cvmx_phys_to_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
