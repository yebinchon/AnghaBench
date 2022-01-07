; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_flogi_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_flogi_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i32, i32, i32 }
%struct.fc_els_flogi = type { %struct.fc_els_cssp*, %struct.fc_els_csp, i32, i32, i64 }
%struct.fc_els_cssp = type { i32, i8*, i8*, i8* }
%struct.fc_els_csp = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@FC_CPC_VALID = common dso_local global i32 0, align 4
@FC_CPC_SEQ = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i32 0, align 4
@FC_SP_FT_CIRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_els_flogi*, i32)* @fc_lport_flogi_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_flogi_fill(%struct.fc_lport* %0, %struct.fc_els_flogi* %1, i32 %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_els_flogi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_els_csp*, align 8
  %8 = alloca %struct.fc_els_cssp*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_els_flogi* %1, %struct.fc_els_flogi** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %10 = call i32 @memset(%struct.fc_els_flogi* %9, i32 0, i32 80)
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %14 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %19 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %18, i32 0, i32 3
  %20 = call i32 @put_unaligned_be64(i32 %17, i32* %19)
  %21 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %25 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %24, i32 0, i32 2
  %26 = call i32 @put_unaligned_be64(i32 %23, i32* %25)
  %27 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %28 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %27, i32 0, i32 1
  store %struct.fc_els_csp* %28, %struct.fc_els_csp** %7, align 8
  %29 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %30 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %32 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %31, i32 0, i32 1
  store i32 32, i32* %32, align 4
  %33 = call i8* @htons(i32 10)
  %34 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %35 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @htons(i32 %39)
  %41 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %42 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %44 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %43, i32 0, i32 0
  %45 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %44, align 8
  %46 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %45, i64 2
  store %struct.fc_els_cssp* %46, %struct.fc_els_cssp** %8, align 8
  %47 = load i32, i32* @FC_CPC_VALID, align 4
  %48 = load i32, i32* @FC_CPC_SEQ, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @htons(i32 %49)
  %51 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %52 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ELS_FLOGI, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %3
  %57 = load i32, i32* @FC_SP_FT_CIRO, align 4
  %58 = call i8* @htons(i32 %57)
  %59 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %60 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = call i8* @htons(i32 255)
  %62 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %63 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = call i8* @htons(i32 31)
  %65 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %66 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %68 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @htonl(i32 %69)
  %71 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %72 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %74 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i8* @htons(i32 %76)
  %78 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %79 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = call i8* @htons(i32 255)
  %81 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %82 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %84 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %56, %3
  ret void
}

declare dso_local i32 @memset(%struct.fc_els_flogi*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
