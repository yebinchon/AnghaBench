; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_open_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_usb_pipe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.octeon_hcd = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_HIGH = common dso_local global i32 0, align 4
@CVMX_USB_DIRECTION_OUT = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_BULK = common dso_local global i32 0, align 4
@CVMX_USB_PIPE_FLAGS_NEED_PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_usb_pipe* (%struct.octeon_hcd*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @cvmx_usb_open_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_usb_pipe* @cvmx_usb_open_pipe(%struct.octeon_hcd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.cvmx_usb_pipe*, align 8
  %13 = alloca %struct.octeon_hcd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.cvmx_usb_pipe*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.cvmx_usb_pipe* @kzalloc(i32 72, i32 %25)
  store %struct.cvmx_usb_pipe* %26, %struct.cvmx_usb_pipe** %24, align 8
  %27 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %28 = icmp ne %struct.cvmx_usb_pipe* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %11
  store %struct.cvmx_usb_pipe* null, %struct.cvmx_usb_pipe** %12, align 8
  br label %127

30:                                               ; preds = %11
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @CVMX_USB_SPEED_HIGH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* @CVMX_USB_DIRECTION_OUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* @CVMX_USB_TRANSFER_BULK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @CVMX_USB_PIPE_FLAGS_NEED_PING, align 4
  %44 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %45 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %38, %34, %30
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %51 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %54 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %57 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %60 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %63 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %66 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %68 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %67, i32 0, i32 14
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %48
  store i32 1, i32* %20, align 4
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.octeon_hcd*, %struct.octeon_hcd** %13, align 8
  %75 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %76 = call i64 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %74, %struct.cvmx_usb_pipe* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i32, i32* %20, align 4
  %80 = mul nsw i32 %79, 8
  %81 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %82 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.octeon_hcd*, %struct.octeon_hcd** %13, align 8
  %84 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 7
  %87 = and i32 %86, -8
  %88 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %89 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %87, %90
  %92 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %93 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  br label %107

94:                                               ; preds = %73
  %95 = load i32, i32* %20, align 4
  %96 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %97 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.octeon_hcd*, %struct.octeon_hcd** %13, align 8
  %99 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %102 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %106 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %94, %78
  %108 = load i32, i32* %21, align 4
  %109 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %110 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %22, align 4
  %112 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %113 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %116 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %118 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %117, i32 0, i32 13
  store i64 0, i64* %118, align 8
  %119 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %120 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %119, i32 0, i32 11
  store i32 -1, i32* %120, align 4
  %121 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  %122 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %121, i32 0, i32 12
  %123 = load %struct.octeon_hcd*, %struct.octeon_hcd** %13, align 8
  %124 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %123, i32 0, i32 1
  %125 = call i32 @list_add_tail(i32* %122, i32* %124)
  %126 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %24, align 8
  store %struct.cvmx_usb_pipe* %126, %struct.cvmx_usb_pipe** %12, align 8
  br label %127

127:                                              ; preds = %107, %29
  %128 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %12, align 8
  ret %struct.cvmx_usb_pipe* %128
}

declare dso_local %struct.cvmx_usb_pipe* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
