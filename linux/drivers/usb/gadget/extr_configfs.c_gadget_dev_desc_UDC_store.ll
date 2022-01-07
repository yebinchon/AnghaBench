; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_gadget_dev_desc_UDC_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_gadget_dev_desc_UDC_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.gadget_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @gadget_dev_desc_UDC_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gadget_dev_desc_UDC_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gadget_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.gadget_info* @to_gadget_info(%struct.config_item* %11)
  store %struct.gadget_info* %12, %struct.gadget_info** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kstrdup(i8* %13, i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %91

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %36 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %43 = call i32 @unregister_gadget(%struct.gadget_info* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %83

47:                                               ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @kfree(i8* %48)
  br label %78

50:                                               ; preds = %34
  %51 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %52 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %83

60:                                               ; preds = %50
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %63 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %67 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @usb_gadget_probe_driver(%struct.TYPE_4__* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %74 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* null, i8** %76, align 8
  br label %83

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %80 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i64, i64* %7, align 8
  store i64 %82, i64* %4, align 8
  br label %91

83:                                               ; preds = %72, %57, %46
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load %struct.gadget_info*, %struct.gadget_info** %8, align 8
  %87 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %83, %78, %18
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local %struct.gadget_info* @to_gadget_info(%struct.config_item*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unregister_gadget(%struct.gadget_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_gadget_probe_driver(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
