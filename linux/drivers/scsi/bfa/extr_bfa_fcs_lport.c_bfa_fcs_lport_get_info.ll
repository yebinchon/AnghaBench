; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_lport_info_s = type { i8*, i8*, i64, i64, i32, i32, i32, i32, i32 }

@BFA_LPORT_TYPE_PHYSICAL = common dso_local global i32 0, align 4
@BFA_FCS_MAX_RPORTS_SUPP = common dso_local global i32 0, align 4
@BFA_LPORT_TYPE_VIRTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_get_info(%struct.bfa_fcs_lport_s* %0, %struct.bfa_lport_info_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfa_lport_info_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %3, align 8
  store %struct.bfa_lport_info_s* %1, %struct.bfa_lport_info_s** %4, align 8
  %5 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(%struct.TYPE_4__* %7, i32 %12)
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = load i32, i32* @BFA_LPORT_TYPE_PHYSICAL, align 4
  %20 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %27 = call i8* @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %26)
  %28 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %31 = call i8* @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s* %30)
  %32 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bfa_lps_get_max_vport(i32 %38)
  %40 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @BFA_FCS_MAX_RPORTS_SUPP, align 4
  %50 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  br label %73

57:                                               ; preds = %2
  %58 = load i32, i32* @BFA_LPORT_TYPE_VIRTUAL, align 4
  %59 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %60 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %62 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %64 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %66 = call i8* @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %65)
  %67 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %68 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %70 = call i8* @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s* %69)
  %71 = load %struct.bfa_lport_info_s*, %struct.bfa_lport_info_s** %4, align 8
  %72 = getelementptr inbounds %struct.bfa_lport_info_s, %struct.bfa_lport_info_s* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %57, %18
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i8* @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_lps_get_max_vport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
