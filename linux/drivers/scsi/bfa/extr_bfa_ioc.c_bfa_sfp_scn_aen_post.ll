; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_scn_aen_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_scn_aen_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.bfi_sfp_scn_s = type { i32, i64, i64 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@BFA_PORT_AEN_SFP_INSERT = common dso_local global i32 0, align 4
@BFA_PORT_AEN_SFP_REMOVE = common dso_local global i32 0, align 4
@BFA_PORT_AEN_SFP_ACCESS_ERROR = common dso_local global i32 0, align 4
@BFA_PORT_AEN_SFP_UNSUPPORT = common dso_local global i32 0, align 4
@BFA_PORT_AEN_SFP_POM = common dso_local global i32 0, align 4
@BFA_AEN_CAT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*, %struct.bfi_sfp_scn_s*)* @bfa_sfp_scn_aen_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s* %0, %struct.bfi_sfp_scn_s* %1) #0 {
  %3 = alloca %struct.bfa_sfp_s*, align 8
  %4 = alloca %struct.bfi_sfp_scn_s*, align 8
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfa_aen_entry_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %3, align 8
  store %struct.bfi_sfp_scn_s* %1, %struct.bfi_sfp_scn_s** %4, align 8
  %8 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bfad_s*
  store %struct.bfad_s* %15, %struct.bfad_s** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %17 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 16
  %22 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %21, %26
  %28 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = call i32 @bfa_trc(%struct.bfa_sfp_s* %16, i32 %31)
  %33 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %34 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %35 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %33, %struct.bfa_aen_entry_s* %34)
  %36 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %37 = icmp ne %struct.bfa_aen_entry_s* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  br label %106

39:                                               ; preds = %2
  %40 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i32 @bfa_ioc_get_type(%struct.TYPE_11__* %42)
  %44 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %45 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 8
  %48 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %56 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i32 @bfa_ioc_get_mac(%struct.TYPE_11__* %61)
  %63 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %64 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 8
  %67 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %4, align 8
  %68 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %87 [
    i32 131, label %70
    i32 129, label %72
    i32 132, label %74
    i32 128, label %76
    i32 130, label %78
  ]

70:                                               ; preds = %39
  %71 = load i32, i32* @BFA_PORT_AEN_SFP_INSERT, align 4
  store i32 %71, i32* %7, align 4
  br label %94

72:                                               ; preds = %39
  %73 = load i32, i32* @BFA_PORT_AEN_SFP_REMOVE, align 4
  store i32 %73, i32* %7, align 4
  br label %94

74:                                               ; preds = %39
  %75 = load i32, i32* @BFA_PORT_AEN_SFP_ACCESS_ERROR, align 4
  store i32 %75, i32* %7, align 4
  br label %94

76:                                               ; preds = %39
  %77 = load i32, i32* @BFA_PORT_AEN_SFP_UNSUPPORT, align 4
  store i32 %77, i32* %7, align 4
  br label %94

78:                                               ; preds = %39
  %79 = load i32, i32* @BFA_PORT_AEN_SFP_POM, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %4, align 8
  %81 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %84 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  br label %94

87:                                               ; preds = %39
  %88 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %89 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @bfa_trc(%struct.bfa_sfp_s* %88, i32 %91)
  %93 = call i32 @WARN_ON(i32 1)
  br label %94

94:                                               ; preds = %87, %78, %76, %74, %72, %70
  %95 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %96 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %97 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @BFA_AEN_CAT_PORT, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %95, %struct.bfad_s* %96, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %94, %38
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i32 @bfa_ioc_get_type(%struct.TYPE_11__*) #1

declare dso_local i32 @bfa_ioc_get_mac(%struct.TYPE_11__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
