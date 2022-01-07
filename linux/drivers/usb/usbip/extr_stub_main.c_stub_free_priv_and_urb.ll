; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_stub_free_priv_and_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_stub_free_priv_and_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_priv = type { i32, %struct.urb**, i32*, i32 }
%struct.urb = type { i64, i32*, %struct.urb**, %struct.urb** }

@stub_priv_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_free_priv_and_urb(%struct.stub_priv* %0) #0 {
  %2 = alloca %struct.stub_priv*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.stub_priv* %0, %struct.stub_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %62, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %65

11:                                               ; preds = %5
  %12 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %13 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %12, i32 0, i32 1
  %14 = load %struct.urb**, %struct.urb*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.urb*, %struct.urb** %14, i64 %16
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  store %struct.urb* %18, %struct.urb** %3, align 8
  %19 = load %struct.urb*, %struct.urb** %3, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %92

22:                                               ; preds = %11
  %23 = load %struct.urb*, %struct.urb** %3, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 3
  %25 = load %struct.urb**, %struct.urb*** %24, align 8
  %26 = call i32 @kfree(%struct.urb** %25)
  %27 = load %struct.urb*, %struct.urb** %3, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 3
  store %struct.urb** null, %struct.urb*** %28, align 8
  %29 = load %struct.urb*, %struct.urb** %3, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 2
  %31 = load %struct.urb**, %struct.urb*** %30, align 8
  %32 = icmp ne %struct.urb** %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %22
  %34 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %35 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.urb*, %struct.urb** %3, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 2
  %41 = load %struct.urb**, %struct.urb*** %40, align 8
  %42 = call i32 @kfree(%struct.urb** %41)
  %43 = load %struct.urb*, %struct.urb** %3, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %44, align 8
  br label %45

45:                                               ; preds = %38, %33, %22
  %46 = load %struct.urb*, %struct.urb** %3, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.urb*, %struct.urb** %3, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @sgl_free(i32* %53)
  %55 = load %struct.urb*, %struct.urb** %3, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.urb*, %struct.urb** %3, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.urb*, %struct.urb** %3, align 8
  %61 = call i32 @usb_free_urb(%struct.urb* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %5

65:                                               ; preds = %5
  %66 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %67 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %66, i32 0, i32 3
  %68 = call i32 @list_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %72 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %71, i32 0, i32 3
  %73 = call i32 @list_del(i32* %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %76 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %81 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @sgl_free(i32* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %86 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %85, i32 0, i32 1
  %87 = load %struct.urb**, %struct.urb*** %86, align 8
  %88 = call i32 @kfree(%struct.urb** %87)
  %89 = load i32, i32* @stub_priv_cache, align 4
  %90 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  %91 = call i32 @kmem_cache_free(i32 %89, %struct.stub_priv* %90)
  br label %92

92:                                               ; preds = %84, %21
  ret void
}

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @sgl_free(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.stub_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
