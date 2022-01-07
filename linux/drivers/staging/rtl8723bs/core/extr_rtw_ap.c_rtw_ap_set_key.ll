; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_rtw_ap_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_rtw_ap_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.cmd_priv }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32*, i32, i32, i64, i32*, i32 }
%struct.setkey_parm = type { i32, i32, i32, i32* }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SetKey_CMD_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32*, i32, i32, i32)* @rtw_ap_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ap_set_key(%struct.adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cmd_obj*, align 8
  %13 = alloca %struct.setkey_parm*, align 8
  %14 = alloca %struct.cmd_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.cmd_priv* %17, %struct.cmd_priv** %14, align 8
  %18 = load i32, i32* @_SUCCESS, align 4
  store i32 %18, i32* %15, align 4
  %19 = call i8* @rtw_zmalloc(i32 40)
  %20 = bitcast i8* %19 to %struct.cmd_obj*
  store %struct.cmd_obj* %20, %struct.cmd_obj** %12, align 8
  %21 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %22 = icmp eq %struct.cmd_obj* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @_FAIL, align 4
  store i32 %24, i32* %15, align 4
  br label %91

25:                                               ; preds = %5
  %26 = call i8* @rtw_zmalloc(i32 24)
  %27 = bitcast i8* %26 to %struct.setkey_parm*
  store %struct.setkey_parm* %27, %struct.setkey_parm** %13, align 8
  %28 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %29 = icmp eq %struct.setkey_parm* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %32 = bitcast %struct.cmd_obj* %31 to i8*
  %33 = call i32 @kfree(i8* %32)
  %34 = load i32, i32* @_FAIL, align 4
  store i32 %34, i32* %15, align 4
  br label %91

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %38 = getelementptr inbounds %struct.setkey_parm, %struct.setkey_parm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @is_wep_enc(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %44 = getelementptr inbounds %struct.setkey_parm, %struct.setkey_parm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @BIT(i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %35
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %55 = getelementptr inbounds %struct.setkey_parm, %struct.setkey_parm* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %58 = getelementptr inbounds %struct.setkey_parm, %struct.setkey_parm* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %63 [
    i32 128, label %60
    i32 129, label %61
    i32 131, label %62
    i32 130, label %62
    i32 132, label %62
  ]

60:                                               ; preds = %52
  store i32 5, i32* %11, align 4
  br label %64

61:                                               ; preds = %52
  store i32 13, i32* %11, align 4
  br label %64

62:                                               ; preds = %52, %52, %52
  br label %63

63:                                               ; preds = %52, %62
  store i32 16, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %61, %60
  %65 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %66 = getelementptr inbounds %struct.setkey_parm, %struct.setkey_parm* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @memcpy(i32* %68, i32* %69, i32 %70)
  %72 = load i32, i32* @_SetKey_CMD_, align 4
  %73 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %74 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.setkey_parm*, %struct.setkey_parm** %13, align 8
  %76 = bitcast %struct.setkey_parm* %75 to i32*
  %77 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %78 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %80 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %79, i32 0, i32 1
  store i32 24, i32* %80, align 8
  %81 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %82 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %81, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %84 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %86 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %85, i32 0, i32 2
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.cmd_priv*, %struct.cmd_priv** %14, align 8
  %89 = load %struct.cmd_obj*, %struct.cmd_obj** %12, align 8
  %90 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %88, %struct.cmd_obj* %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %64, %30, %23
  %92 = load i32, i32* %15, align 4
  ret i32 %92
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @is_wep_enc(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
