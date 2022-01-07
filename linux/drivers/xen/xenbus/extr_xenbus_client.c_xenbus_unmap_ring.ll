; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_unmap_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_unmap_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i32 }

@XENBUS_MAX_RING_GRANTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unmapping page at handle %d error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_unmap_ring(%struct.xenbus_device* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.gnttab_unmap_grant_ref, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %99

25:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %18, i64 %32
  %34 = load i64*, i64** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @GNTMAP_host_map, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %33, i64 %38, i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @HYPERVISOR_grant_table_op(i32 %50, %struct.gnttab_unmap_grant_ref* %18, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* @GNTST_okay, align 4
  store i32 %57, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %94, %56
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %18, i64 %64
  %66 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GNTST_okay, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %62
  %71 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %18, i64 %73
  %75 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %18, i64 %83
  %85 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @xenbus_dev_error(%struct.xenbus_device* %71, i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %18, i64 %89
  %91 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  br label %97

93:                                               ; preds = %62
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %58

97:                                               ; preds = %70, %58
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %97, %22
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i64, i32, i32) #2

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
