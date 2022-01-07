; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_cfg_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_cfg_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32*, i32*, i64*, i32*)* }

@EFI_GLOBAL_VARIABLE_GUID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mlxbf_tmfifo_efi_name = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@mlxbf_tmfifo_net_default_mac = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mlxbf_tmfifo_get_cfg_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_get_cfg_mac(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @EFI_GLOBAL_VARIABLE_GUID, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i64 (i32, i32*, i32*, i64*, i32*)*, i64 (i32, i32*, i32*, i64*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %16 = load i32, i32* @mlxbf_tmfifo_efi_name, align 4
  %17 = call i64 %15(i32 %16, i32* %3, i32* null, i64* %4, i32* %14)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @EFI_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @ether_addr_copy(i32* %27, i32* %14)
  br label %33

29:                                               ; preds = %21, %1
  %30 = load i32*, i32** %2, align 8
  %31 = load i32*, i32** @mlxbf_tmfifo_net_default_mac, align 8
  %32 = call i32 @ether_addr_copy(i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %34)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
