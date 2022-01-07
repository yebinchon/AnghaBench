; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_vpd* }
%struct.pci_vpd = type { i32, i64, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64, i64, i8*)* @pci_vpd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vpd_write(%struct.pci_dev* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pci_vpd*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.pci_vpd*, %struct.pci_vpd** %16, align 8
  store %struct.pci_vpd* %17, %struct.pci_vpd** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, 3
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = and i64 %30, 3
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25, %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %162

36:                                               ; preds = %29
  %37 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %38 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %43 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %46 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @pci_vpd_size(%struct.pci_dev* %44, i64 %47)
  %49 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %50 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %53 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %162

59:                                               ; preds = %51
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %62 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %162

68:                                               ; preds = %59
  %69 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %70 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %69, i32 0, i32 3
  %71 = call i64 @mutex_lock_killable(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EINTR, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %162

76:                                               ; preds = %68
  %77 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %78 = call i32 @pci_vpd_wait(%struct.pci_dev* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %148

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %144, %82
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %147

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  %90 = load i32, i32* %88, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* %91, align 4
  %94 = shl i32 %93, 8
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %11, align 8
  %99 = load i32, i32* %97, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  %105 = load i32, i32* %103, align 4
  %106 = shl i32 %105, 24
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %110 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %111 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PCI_VPD_DATA, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @pci_user_write_config_dword(%struct.pci_dev* %109, i64 %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %87
  br label %147

120:                                              ; preds = %87
  %121 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %122 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %123 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PCI_VPD_ADDR, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @PCI_VPD_ADDR_F, align 8
  %129 = or i64 %127, %128
  %130 = call i32 @pci_user_write_config_word(%struct.pci_dev* %121, i64 %126, i64 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  br label %147

134:                                              ; preds = %120
  %135 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %136 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  %137 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %138 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %140 = call i32 @pci_vpd_wait(%struct.pci_dev* %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %147

144:                                              ; preds = %134
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %7, align 8
  br label %83

147:                                              ; preds = %143, %133, %119, %83
  br label %148

148:                                              ; preds = %147, %81
  %149 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  %150 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %149, i32 0, i32 3
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  br label %159

157:                                              ; preds = %148
  %158 = load i64, i64* %8, align 8
  br label %159

159:                                              ; preds = %157, %154
  %160 = phi i64 [ %156, %154 ], [ %158, %157 ]
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %159, %73, %65, %56, %33
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @pci_vpd_size(%struct.pci_dev*, i64) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @pci_vpd_wait(%struct.pci_dev*) #1

declare dso_local i32 @pci_user_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_user_write_config_word(%struct.pci_dev*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
