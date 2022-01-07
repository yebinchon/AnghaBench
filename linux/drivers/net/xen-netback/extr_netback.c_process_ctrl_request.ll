; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_process_ctrl_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_process_ctrl_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32 }
%struct.xen_netif_ctrl_request = type { i32, i32* }

@XEN_NETIF_CTRL_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@XEN_NETBK_MAX_HASH_MAPPING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif*, %struct.xen_netif_ctrl_request*)* @process_ctrl_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ctrl_request(%struct.xenvif* %0, %struct.xen_netif_ctrl_request* %1) #0 {
  %3 = alloca %struct.xenvif*, align 8
  %4 = alloca %struct.xen_netif_ctrl_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xenvif* %0, %struct.xenvif** %3, align 8
  store %struct.xen_netif_ctrl_request* %1, %struct.xen_netif_ctrl_request** %4, align 8
  %7 = load i32, i32* @XEN_NETIF_CTRL_STATUS_NOT_SUPPORTED, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %9 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %72 [
    i32 132, label %11
    i32 134, label %19
    i32 131, label %22
    i32 130, label %30
    i32 133, label %43
    i32 128, label %46
    i32 129, label %54
  ]

11:                                               ; preds = %2
  %12 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %13 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %14 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xenvif_set_hash_alg(%struct.xenvif* %12, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %21 = call i32 @xenvif_get_hash_flags(%struct.xenvif* %20, i32* %6)
  store i32 %21, i32* %5, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %24 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %25 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xenvif_set_hash_flags(%struct.xenvif* %23, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %73

30:                                               ; preds = %2
  %31 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %32 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %33 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %38 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xenvif_set_hash_key(%struct.xenvif* %31, i32 %36, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %73

43:                                               ; preds = %2
  %44 = load i32, i32* @XEN_NETIF_CTRL_STATUS_SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @XEN_NETBK_MAX_HASH_MAPPING_SIZE, align 4
  store i32 %45, i32* %6, align 4
  br label %73

46:                                               ; preds = %2
  %47 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %48 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %49 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xenvif_set_hash_mapping_size(%struct.xenvif* %47, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %73

54:                                               ; preds = %2
  %55 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %56 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %57 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %62 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %67 = getelementptr inbounds %struct.xen_netif_ctrl_request, %struct.xen_netif_ctrl_request* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @xenvif_set_hash_mapping(%struct.xenvif* %55, i32 %60, i32 %65, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %2
  br label %73

73:                                               ; preds = %72, %54, %46, %43, %30, %22, %19, %11
  %74 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %75 = load %struct.xen_netif_ctrl_request*, %struct.xen_netif_ctrl_request** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @make_ctrl_response(%struct.xenvif* %74, %struct.xen_netif_ctrl_request* %75, i32 %76, i32 %77)
  %79 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %80 = call i32 @push_ctrl_response(%struct.xenvif* %79)
  ret void
}

declare dso_local i32 @xenvif_set_hash_alg(%struct.xenvif*, i32) #1

declare dso_local i32 @xenvif_get_hash_flags(%struct.xenvif*, i32*) #1

declare dso_local i32 @xenvif_set_hash_flags(%struct.xenvif*, i32) #1

declare dso_local i32 @xenvif_set_hash_key(%struct.xenvif*, i32, i32) #1

declare dso_local i32 @xenvif_set_hash_mapping_size(%struct.xenvif*, i32) #1

declare dso_local i32 @xenvif_set_hash_mapping(%struct.xenvif*, i32, i32, i32) #1

declare dso_local i32 @make_ctrl_response(%struct.xenvif*, %struct.xen_netif_ctrl_request*, i32, i32) #1

declare dso_local i32 @push_ctrl_response(%struct.xenvif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
