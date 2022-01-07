; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.security_priv = type { i64 }
%struct.cmd_obj = type { i8*, i32, i32, i64, i32*, i32 }
%struct.setauth_parm = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_SetAuth_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_set_auth(%struct._adapter* %0, %struct.security_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.security_priv*, align 8
  %6 = alloca %struct.cmd_priv*, align 8
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca %struct.setauth_parm*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.security_priv* %1, %struct.security_priv** %5, align 8
  %9 = load %struct._adapter*, %struct._adapter** %4, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %6, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.cmd_obj* @kmalloc(i32 40, i32 %11)
  store %struct.cmd_obj* %12, %struct.cmd_obj** %7, align 8
  %13 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %14 = icmp ne %struct.cmd_obj* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.setauth_parm* @kzalloc(i32 8, i32 %19)
  store %struct.setauth_parm* %20, %struct.setauth_parm** %8, align 8
  %21 = load %struct.setauth_parm*, %struct.setauth_parm** %8, align 8
  %22 = icmp ne %struct.setauth_parm* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %25 = call i32 @kfree(%struct.cmd_obj* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %18
  %29 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %30 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.setauth_parm*, %struct.setauth_parm** %8, align 8
  %33 = getelementptr inbounds %struct.setauth_parm, %struct.setauth_parm* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @_SetAuth_CMD_, align 4
  %35 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %36 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.setauth_parm*, %struct.setauth_parm** %8, align 8
  %38 = bitcast %struct.setauth_parm* %37 to i8*
  %39 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %40 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %42 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %41, i32 0, i32 1
  store i32 8, i32* %42, align 8
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %44 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %43, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %46 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %48 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.cmd_priv*, %struct.cmd_priv** %6, align 8
  %51 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %52 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %50, %struct.cmd_obj* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %28, %23, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.cmd_obj* @kmalloc(i32, i32) #1

declare dso_local %struct.setauth_parm* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
