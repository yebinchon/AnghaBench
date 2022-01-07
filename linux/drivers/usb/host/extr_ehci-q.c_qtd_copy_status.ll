; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_qtd_copy_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_qtd_copy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@QTD_STS_BABBLE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@QTD_STS_MMF = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@QTD_STS_DBE = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@QTD_STS_XACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"devpath %s ep%d%s 3strikes\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.urb*, i64, i32)* @qtd_copy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtd_copy_status(%struct.ehci_hcd* %0, %struct.urb* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @EINPROGRESS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @QTD_PID(i32 %13)
  %15 = icmp ne i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @QTD_LENGTH(i32 %21)
  %23 = sub i64 %20, %22
  %24 = load %struct.urb*, %struct.urb** %7, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  br label %30

30:                                               ; preds = %19, %4
  %31 = load %struct.urb*, %struct.urb** %7, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %127

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @IS_SHORT_READ(i32 %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EREMOTEIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @QTD_STS_HALT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %125

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @QTD_STS_BABBLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EOVERFLOW, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %124

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @QTD_CERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EPIPE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %123

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @QTD_STS_MMF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EPROTO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %122

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @QTD_STS_DBE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @QTD_PID(i32 %80)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @ENOSR, align 4
  %85 = sub nsw i32 0, %84
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @ECOMM, align 4
  %88 = sub nsw i32 0, %87
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %85, %83 ], [ %88, %86 ]
  store i32 %90, i32* %10, align 4
  br label %121

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @QTD_STS_XACT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %98 = load %struct.urb*, %struct.urb** %7, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.urb*, %struct.urb** %7, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @usb_pipeendpoint(i32 %105)
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @usb_pipein(i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %114 = call i32 @ehci_dbg(%struct.ehci_hcd* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %106, i8* %113)
  %115 = load i32, i32* @EPROTO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  br label %120

117:                                              ; preds = %91
  %118 = load i32, i32* @EPROTO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %117, %96
  br label %121

121:                                              ; preds = %120, %89
  br label %122

122:                                              ; preds = %121, %71
  br label %123

123:                                              ; preds = %122, %63
  br label %124

124:                                              ; preds = %123, %56
  br label %125

125:                                              ; preds = %124, %46
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %36
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @QTD_PID(i32) #1

declare dso_local i64 @QTD_LENGTH(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_SHORT_READ(i32) #1

declare dso_local i64 @QTD_CERR(i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, i32, i32, i8*) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
