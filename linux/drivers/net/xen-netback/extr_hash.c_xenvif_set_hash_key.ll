; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.gnttab_copy = type { i64, i64, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@GNTCOPY_source_gref = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@XEN_NETBK_MAX_HASH_KEY_SIZE = common dso_local global i64 0, align 8
@XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@GNTST_okay = common dso_local global i64 0, align 8
@XEN_NETIF_CTRL_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xenvif_set_hash_key(%struct.xenvif* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.xenvif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.gnttab_copy, align 8
  store %struct.xenvif* %0, %struct.xenvif** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %11 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 2
  %18 = load i32, i32* @GNTCOPY_source_gref, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @xen_offset_in_page(i32* %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %24 = load i32, i32* @DOMID_SELF, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @virt_to_gfn(i32* %27)
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %32 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @XEN_NETBK_MAX_HASH_KEY_SIZE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i64, i64* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 8
  store i64 %41, i64* %4, align 8
  br label %71

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = call i32 @gnttab_batch_copy(%struct.gnttab_copy* %9, i32 1)
  %48 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %9, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GNTST_okay, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 8
  store i64 %53, i64* %4, align 8
  br label %71

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @XEN_NETBK_MAX_HASH_KEY_SIZE, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i64, i64* @XEN_NETBK_MAX_HASH_KEY_SIZE, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i32 @memset(i32* %62, i32 0, i64 %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %69 = call i32 @xenvif_flush_hash(%struct.xenvif* %68)
  %70 = load i64, i64* @XEN_NETIF_CTRL_STATUS_SUCCESS, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %67, %52, %40
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @xen_offset_in_page(i32*) #1

declare dso_local i32 @virt_to_gfn(i32*) #1

declare dso_local i32 @gnttab_batch_copy(%struct.gnttab_copy*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @xenvif_flush_hash(%struct.xenvif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
