; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_vpd* }
%struct.pci_vpd = type { i32, i64, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64, i64, i8*)* @pci_vpd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vpd_read(%struct.pci_dev* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pci_vpd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.pci_vpd*, %struct.pci_vpd** %18, align 8
  store %struct.pci_vpd* %19, %struct.pci_vpd** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %171

30:                                               ; preds = %4
  %31 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %32 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %37 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %40 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @pci_vpd_size(%struct.pci_dev* %38, i64 %41)
  %43 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %44 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %47 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %171

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %56 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %171

60:                                               ; preds = %53
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %63 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %68 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %75 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %74, i32 0, i32 3
  %76 = call i64 @mutex_lock_killable(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EINTR, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %171

81:                                               ; preds = %73
  %82 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %83 = call i32 @pci_vpd_wait(%struct.pci_dev* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %157

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %155, %87
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %156

92:                                               ; preds = %88
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %95 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI_VPD_ADDR, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* %7, align 8
  %100 = and i64 %99, -4
  %101 = call i32 @pci_user_write_config_word(%struct.pci_dev* %93, i64 %98, i64 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %156

105:                                              ; preds = %92
  %106 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %107 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %109 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %110 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %112 = call i32 @pci_vpd_wait(%struct.pci_dev* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %156

116:                                              ; preds = %105
  %117 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %118 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %119 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCI_VPD_DATA, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @pci_user_read_config_dword(%struct.pci_dev* %117, i64 %122, i32* %14)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %156

127:                                              ; preds = %116
  %128 = load i64, i64* %7, align 8
  %129 = and i64 %128, 3
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %152, %127
  %132 = load i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = icmp ult i64 %133, 4
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp uge i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %13, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %12, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %155

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %135
  %150 = load i32, i32* %14, align 4
  %151 = ashr i32 %150, 8
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %131

155:                                              ; preds = %147, %131
  br label %88

156:                                              ; preds = %126, %115, %104, %88
  br label %157

157:                                              ; preds = %156, %86
  %158 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %159 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %158, i32 0, i32 3
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  br label %168

166:                                              ; preds = %157
  %167 = load i64, i64* %8, align 8
  br label %168

168:                                              ; preds = %166, %163
  %169 = phi i64 [ %165, %163 ], [ %167, %166 ]
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %168, %78, %59, %50, %27
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i64 @pci_vpd_size(%struct.pci_dev*, i64) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @pci_vpd_wait(%struct.pci_dev*) #1

declare dso_local i32 @pci_user_write_config_word(%struct.pci_dev*, i64, i64) #1

declare dso_local i32 @pci_user_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
