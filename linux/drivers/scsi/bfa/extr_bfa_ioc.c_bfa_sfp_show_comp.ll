; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_show_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_show_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i32, i32, i64, i64, i32, i32, i32, i64 }
%struct.bfi_mbmsg_s = type { i32 }
%struct.bfi_sfp_rsp_s = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_SFP_STATE_VALID = common dso_local global i64 0, align 8
@BFA_SFP_STATE_UNSUPPORT = common dso_local global i64 0, align 8
@BFA_STATUS_SFP_UNSUPP = common dso_local global i64 0, align 8
@BFI_SFP_MEM_DIAGEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*, %struct.bfi_mbmsg_s*)* @bfa_sfp_show_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_show_comp(%struct.bfa_sfp_s* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca %struct.bfa_sfp_s*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfi_sfp_rsp_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %8 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %9 = bitcast %struct.bfi_mbmsg_s* %8 to %struct.bfi_sfp_rsp_s*
  store %struct.bfi_sfp_rsp_s* %9, %struct.bfi_sfp_rsp_s** %5, align 8
  %10 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %16 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bfa_trc(%struct.bfa_sfp_s* %15, i32 %18)
  br label %130

20:                                               ; preds = %2
  %21 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %22 = load %struct.bfi_sfp_rsp_s*, %struct.bfi_sfp_rsp_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfi_sfp_rsp_s, %struct.bfi_sfp_rsp_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_trc(%struct.bfa_sfp_s* %21, i32 %24)
  %26 = load %struct.bfi_sfp_rsp_s*, %struct.bfi_sfp_rsp_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfi_sfp_rsp_s, %struct.bfi_sfp_rsp_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @BFA_STATUS_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %20
  %33 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BFA_SFP_STATE_VALID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i64, i64* @BFA_STATUS_OK, align 8
  %42 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %62

44:                                               ; preds = %32
  %45 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BFA_SFP_STATE_UNSUPPORT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @BFA_STATUS_SFP_UNSUPP, align 8
  %52 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %61

54:                                               ; preds = %44
  %55 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %56 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @bfa_trc(%struct.bfa_sfp_s* %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %50
  br label %62

62:                                               ; preds = %61, %40
  br label %72

63:                                               ; preds = %20
  %64 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.bfi_sfp_rsp_s*, %struct.bfi_sfp_rsp_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfi_sfp_rsp_s, %struct.bfi_sfp_rsp_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %63, %62
  %73 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %74 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bfa_trc(%struct.bfa_sfp_s* %73, i32 %76)
  %78 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @BFI_SFP_MEM_DIAGEXT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %72
  %85 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %86 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bfa_trc(%struct.bfa_sfp_s* %85, i32 %88)
  %90 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %91 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %84
  store i32 4, i32* %6, align 4
  %95 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %96 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %7, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %101 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @memcpy(i32* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %84
  %106 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %107 = call i32 @bfa_cb_sfp_show(%struct.bfa_sfp_s* %106)
  br label %111

108:                                              ; preds = %72
  %109 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %110 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %113 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %114 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bfa_trc(%struct.bfa_sfp_s* %112, i32 %115)
  %117 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %118 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load %struct.bfi_sfp_rsp_s*, %struct.bfi_sfp_rsp_s** %5, align 8
  %123 = getelementptr inbounds %struct.bfi_sfp_rsp_s, %struct.bfi_sfp_rsp_s* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %127 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %129 = call i32 @bfa_cb_sfp_state_query(%struct.bfa_sfp_s* %128)
  br label %130

130:                                              ; preds = %14, %121, %111
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @bfa_cb_sfp_show(%struct.bfa_sfp_s*) #1

declare dso_local i32 @bfa_cb_sfp_state_query(%struct.bfa_sfp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
