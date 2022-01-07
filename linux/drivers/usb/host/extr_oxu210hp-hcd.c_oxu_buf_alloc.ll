; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ehci_qtd = type { i32, i8*, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@BUFFER_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"buffer too big (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*, %struct.ehci_qtd*, i32)* @oxu_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_buf_alloc(%struct.oxu_hcd* %0, %struct.ehci_qtd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.oxu_hcd*, align 8
  %6 = alloca %struct.ehci_qtd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %5, align 8
  store %struct.ehci_qtd* %1, %struct.ehci_qtd** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BUFFER_SIZE, align 4
  %14 = load i32, i32* @BUFFER_NUM, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @oxu_err(%struct.oxu_hcd* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %125

23:                                               ; preds = %3
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BUFFER_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @BUFFER_SIZE, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %38, %23
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %33

41:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %105, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @BUFFER_NUM, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %47

67:                                               ; preds = %62, %47
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %105

72:                                               ; preds = %67
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = bitcast i32* %80 to i8*
  %82 = load %struct.ehci_qtd*, %struct.ehci_qtd** %6, align 8
  %83 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ehci_qtd*, %struct.ehci_qtd** %6, align 8
  %85 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @virt_to_phys(i8* %86)
  %88 = load %struct.ehci_qtd*, %struct.ehci_qtd** %6, align 8
  %89 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @BUFFER_SIZE, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.ehci_qtd*, %struct.ehci_qtd** %6, align 8
  %94 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %97 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %103 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  store i32 0, i32* %4, align 4
  br label %125

105:                                              ; preds = %71
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %108 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @max(i32 %106, i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %10, align 4
  br label %42

119:                                              ; preds = %42
  %120 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %121 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %119, %72, %17
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @oxu_err(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
